`timescale 1ns/1ps

module pi_loop_filter (
    input  wire       tdc_clk,
    input  wire       reset_n,
    input  wire       enable,

    input  wire [7:0] phase_error,
    input  wire       error_valid,

    input  wire [7:0] kp,
    input  wire [7:0] ki,

    output reg  [9:0] tuning_word,
    output reg        sat_high,
    output reg        sat_low
);

    // ============================================================
    // FIXED-POINT FORMAT
    // ============================================================
    //
    // Kp and Ki are represented in Q4.4 format.
    //
    // Example:
    //
    // 16 = 1.0000
    //  8 = 0.5000
    //  4 = 0.2500
    //  2 = 0.1250
    //  1 = 0.0625
    // 24 = 1.5000
    //
    // tuning_word range:
    //
    //      0 ... 1023
    //
    // Internal control values are scaled by 16.
    //
    // midpoint:
    //
    //      512 * 16 = 8192
    //
    // maximum:
    //
    //      1023 * 16 = 16368
    //
    // ============================================================

    localparam signed [23:0] BIAS_Q = 24'sd8192;
    localparam signed [23:0] MAX_Q  = 24'sd16368;
    localparam signed [23:0] MIN_Q  = 24'sd0;


    // ============================================================
    // SIGNED INTERPRETATION OF PHASE ERROR
    // ============================================================

    wire signed [7:0] phase_error_s;

    assign phase_error_s = $signed(phase_error);


    // Sign extend phase error from 8 bits to 16 bits.

    wire signed [15:0] phase_error_16;

    assign phase_error_16 =
        {{8{phase_error_s[7]}}, phase_error_s};


    // ============================================================
    // STAGE 1
    //
    // Calculate proportional and integral increments.
    //
    // We intentionally DO NOT use general multipliers.
    //
    // Previous implementation:
    //
    //      phase_error * kp
    //      phase_error * ki
    //
    // These are replaced with shifts/additions because the
    // controller only generates a small fixed set of gain values.
    // ============================================================

    reg signed [15:0] proportional_product_comb;
    reg signed [15:0] integral_product_comb;


    // ------------------------
    // Proportional calculation
    // ------------------------

    always @(*) begin

        case (kp)

            // Kp = 1.0
            // Stored Q4.4 value = 16
            8'd16:
                proportional_product_comb =
                    phase_error_16 <<< 4;


            // Kp = 0.5
            // Stored Q4.4 value = 8
            8'd8:
                proportional_product_comb =
                    phase_error_16 <<< 3;


            // Kp = 0.25
            // Stored Q4.4 value = 4
            8'd4:
                proportional_product_comb =
                    phase_error_16 <<< 2;


            // Kp = 1.5
            // Stored Q4.4 value = 24
            //
            // 24 = 16 + 8
            8'd24:
                proportional_product_comb =
                    (phase_error_16 <<< 4)
                    +
                    (phase_error_16 <<< 3);


            default:
                proportional_product_comb =
                    16'sd0;

        endcase

    end


    // --------------------
    // Integral calculation
    // --------------------

    always @(*) begin

        case (ki)

            // Ki = 0.125
            // Stored Q4.4 value = 2
            8'd2:
                integral_product_comb =
                    phase_error_16 <<< 1;


            // Ki = 0.0625
            // Stored Q4.4 value = 1
            8'd1:
                integral_product_comb =
                    phase_error_16;


            default:
                integral_product_comb =
                    16'sd0;

        endcase

    end


    // ============================================================
    // PIPELINE REGISTER
    //
    // This is the new timing-closure register.
    //
    // BEFORE:
    //
    // controller state
    //      -> gain decode
    //      -> gain arithmetic
    //      -> integrator
    //      -> anti-windup
    //      -> saturation
    //      -> output FF
    //
    // AFTER:
    //
    // controller state
    //      -> gain arithmetic
    //      -> PIPELINE FF
    //
    // PIPELINE FF
    //      -> integrator
    //      -> anti-windup
    //      -> saturation
    //      -> output FF
    //
    // ============================================================

    reg signed [15:0] proportional_product_reg;
    reg signed [15:0] integral_product_reg;

    reg signed [7:0] phase_error_reg;

    reg stage1_valid;


    always @(posedge tdc_clk or negedge reset_n) begin

        if (!reset_n) begin

            proportional_product_reg <= 16'sd0;
            integral_product_reg     <= 16'sd0;
            phase_error_reg          <= 8'sd0;

            stage1_valid             <= 1'b0;

        end

        else begin

            // Default: no valid update travelling through pipeline
            stage1_valid <= 1'b0;

            if (enable && error_valid) begin

                proportional_product_reg
                    <= proportional_product_comb;

                integral_product_reg
                    <= integral_product_comb;

                phase_error_reg
                    <= phase_error_s;

                stage1_valid
                    <= 1'b1;

            end

        end

    end


    // ============================================================
    // SIGN EXTEND PIPELINED PRODUCTS
    // ============================================================

    wire signed [23:0] proportional_ext;
    wire signed [23:0] integral_ext;


    assign proportional_ext =
        {{8{proportional_product_reg[15]}},
          proportional_product_reg};


    assign integral_ext =
        {{8{integral_product_reg[15]}},
          integral_product_reg};


    // ============================================================
    // INTEGRATOR
    // ============================================================

    reg signed [23:0] integrator;


    // Candidate value if we accept the new integral contribution.

    wire signed [23:0] candidate_integrator;

    assign candidate_integrator =
        integrator + integral_ext;


    // ============================================================
    // CANDIDATE CONTROL VALUE
    //
    // control =
    //
    // bias + integral + proportional
    //
    // ============================================================

    wire signed [23:0] candidate_control;

    assign candidate_control =
        BIAS_Q
        + candidate_integrator
        + proportional_ext;


    // ============================================================
    // ANTI-WINDUP
    // ============================================================

    reg signed [23:0] integrator_next;


    always @(*) begin

        // Normally accept the new integral contribution.

        integrator_next = candidate_integrator;


        // --------------------------------------------------------
        // Positive saturation
        //
        // If control already wants to exceed maximum and error is
        // pushing it even higher, stop integrating.
        // --------------------------------------------------------

        if ((candidate_control > MAX_Q) &&
            (phase_error_reg > 8'sd0)) begin

            integrator_next = integrator;

        end


        // --------------------------------------------------------
        // Negative saturation
        //
        // If control wants to go below minimum and error is pushing
        // it even lower, stop integrating.
        // --------------------------------------------------------

        else if ((candidate_control < MIN_Q) &&
                 (phase_error_reg < 8'sd0)) begin

            integrator_next = integrator;

        end

    end


    // ============================================================
    // FINAL CONTROL VALUE AFTER ANTI-WINDUP
    // ============================================================

    wire signed [23:0] final_control;

    assign final_control =
        BIAS_Q
        + integrator_next
        + proportional_ext;


    // ============================================================
    // STAGE 2
    //
    // Update integrator and tuning word from the PIPELINED values.
    //
    // stage1_valid replaces the old direct error_valid condition.
    // ============================================================

    always @(posedge tdc_clk or negedge reset_n) begin

        if (!reset_n) begin

            integrator  <= 24'sd0;

            tuning_word <= 10'd512;

            sat_high    <= 1'b0;
            sat_low     <= 1'b0;

        end

        else if (enable && stage1_valid) begin

            // Update integrator after anti-windup decision.

            integrator <= integrator_next;


            // ----------------------------------------------------
            // High saturation
            // ----------------------------------------------------

            if (final_control > MAX_Q) begin

                tuning_word <= 10'd1023;

                sat_high <= 1'b1;
                sat_low  <= 1'b0;

            end


            // ----------------------------------------------------
            // Low saturation
            // ----------------------------------------------------

            else if (final_control < MIN_Q) begin

                tuning_word <= 10'd0;

                sat_high <= 1'b0;
                sat_low  <= 1'b1;

            end


            // ----------------------------------------------------
            // Normal operating range
            //
            // Internal number is scaled by 16.
            //
            // Divide by 16 by taking bits [13:4].
            // ----------------------------------------------------

            else begin

                tuning_word <= final_control[13:4];

                sat_high <= 1'b0;
                sat_low  <= 1'b0;

            end

        end

    end


endmodule
