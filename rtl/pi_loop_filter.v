`timescale 1ns/1ps

module pi_loop_filter (

    input  wire       tdc_clk,
    input  wire       reset_n,

    input  wire       enable,

    // Bumpless coarse-to-fine handoff
    input  wire       load_tuning,
    input  wire [9:0] load_tuning_word,

    input  wire [7:0] phase_error,
    input  wire       error_valid,

    input  wire [7:0] kp,
    input  wire [7:0] ki,

    output reg  [9:0] tuning_word,

    output reg        sat_high,
    output reg        sat_low

);


    wire signed [7:0] phase_error_s;

    assign phase_error_s =
        $signed(phase_error);


    // =========================================================
    // Q4.4 CONSTANTS
    // =========================================================

    localparam signed [23:0] BIAS_Q =
        24'sd8192;       // 512 * 16

    localparam signed [23:0] MAX_Q =
        24'sd16368;      // 1023 * 16

    localparam signed [23:0] MIN_Q =
        24'sd0;


    // =========================================================
    // SIGN-EXTENDED PHASE ERROR
    // =========================================================

    wire signed [15:0] phase_error_16;

    assign phase_error_16 =
        {
            {8{phase_error_s[7]}},
            phase_error_s
        };


    // =========================================================
    // PROPORTIONAL PATH
    // =========================================================

    reg signed [15:0] proportional_product;


    always @(*) begin

        case (kp)

            8'd16:
                proportional_product =
                    phase_error_16 <<< 4;

            8'd8:
                proportional_product =
                    phase_error_16 <<< 3;

            8'd4:
                proportional_product =
                    phase_error_16 <<< 2;

            8'd24:
                proportional_product =
                    (phase_error_16 <<< 4)
                    +
                    (phase_error_16 <<< 3);

            default:
                proportional_product =
                    16'sd0;

        endcase

    end


    // =========================================================
    // INTEGRAL PATH
    // =========================================================

    reg signed [15:0] integral_product;


    always @(*) begin

        case (ki)

            8'd2:
                integral_product =
                    phase_error_16 <<< 1;

            8'd1:
                integral_product =
                    phase_error_16;

            default:
                integral_product =
                    16'sd0;

        endcase

    end


    // =========================================================
    // SIGN EXTENSION
    // =========================================================

    wire signed [23:0] proportional_ext;
    wire signed [23:0] integral_ext;


    assign proportional_ext =
        {
            {8{proportional_product[15]}},
            proportional_product
        };


    assign integral_ext =
        {
            {8{integral_product[15]}},
            integral_product
        };


    // =========================================================
    // PI STATE
    // =========================================================

    reg signed [23:0] integrator;

    reg signed [23:0] candidate_integrator;
    reg signed [23:0] candidate_control;
    reg signed [23:0] final_control;

    reg signed [23:0] next_integrator;

    reg [9:0] next_tuning_word;

    reg next_sat_high;
    reg next_sat_low;


    // =========================================================
    // LOAD VALUE FOR BUMPLESS HANDOFF
    // =========================================================

    wire signed [23:0] load_tuning_q;

    assign load_tuning_q =
        $signed({
            14'd0,
            load_tuning_word
        }) <<< 4;


    // =========================================================
    // NORMAL PI NEXT-STATE LOGIC
    // =========================================================

    always @(*) begin

        next_integrator =
            integrator;

        next_tuning_word =
            tuning_word;

        next_sat_high =
            sat_high;

        next_sat_low =
            sat_low;


        candidate_integrator =
            integrator;


        candidate_control =
            BIAS_Q
            +
            proportional_ext
            +
            integrator;


        final_control =
            BIAS_Q
            +
            proportional_ext
            +
            integrator;


        if (enable && error_valid) begin


            // -------------------------------------------------
            // I[n] = I[n-1] + Ki * error
            // -------------------------------------------------

            candidate_integrator =
                integrator
                +
                integral_ext;


            candidate_control =
                BIAS_Q
                +
                proportional_ext
                +
                candidate_integrator;


            // -------------------------------------------------
            // ANTI-WINDUP
            // -------------------------------------------------

            if ((candidate_control > MAX_Q) &&
                (phase_error_s > 0)) begin

                next_integrator =
                    integrator;

            end


            else if ((candidate_control < MIN_Q) &&
                     (phase_error_s < 0)) begin

                next_integrator =
                    integrator;

            end


            else begin

                next_integrator =
                    candidate_integrator;

            end


            // -------------------------------------------------
            // FINAL CONTROL VALUE
            // -------------------------------------------------

            final_control =
                BIAS_Q
                +
                proportional_ext
                +
                next_integrator;


            // -------------------------------------------------
            // SATURATION
            // -------------------------------------------------

            if (final_control > MAX_Q) begin

                next_tuning_word =
                    10'd1023;

                next_sat_high =
                    1'b1;

                next_sat_low =
                    1'b0;

            end


            else if (final_control < MIN_Q) begin

                next_tuning_word =
                    10'd0;

                next_sat_high =
                    1'b0;

                next_sat_low =
                    1'b1;

            end


            else begin

                next_tuning_word =
                    final_control[13:4];

                next_sat_high =
                    1'b0;

                next_sat_low =
                    1'b0;

            end

        end

    end


    // =========================================================
    // STATE REGISTERS
    // =========================================================

    always @(posedge tdc_clk or negedge reset_n) begin

        if (!reset_n) begin

            tuning_word <=
                10'd512;

            integrator <=
                24'sd0;

            sat_high <=
                1'b0;

            sat_low <=
                1'b0;

        end


        // -----------------------------------------------------
        // COARSE -> FINE HANDOFF
        //
        // Example:
        //
        // coarse tuning = 608
        //
        // PI integrator becomes:
        //
        // (608*16) - (512*16)
        //
        // so PI output begins exactly at 608.
        // -----------------------------------------------------

        else if (load_tuning) begin

            tuning_word <=
                load_tuning_word;

            integrator <=
                load_tuning_q - BIAS_Q;

            sat_high <=
                1'b0;

            sat_low <=
                1'b0;

        end


        else begin

            integrator <=
                next_integrator;

            tuning_word <=
                next_tuning_word;

            sat_high <=
                next_sat_high;

            sat_low <=
                next_sat_low;

        end

    end


endmodule
