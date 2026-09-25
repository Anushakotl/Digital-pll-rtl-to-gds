`timescale 1ns/1ps

module pi_loop_filter (
    input  wire                    tdc_clk,
    input  wire                    reset_n,
    input  wire                    enable,

    input  wire [7:0]       phase_error,
    input  wire                    error_valid,

    input  wire [7:0]       kp,
    input  wire [7:0]       ki,

    output reg  [9:0]              tuning_word,
    output reg                     sat_high,
    output reg                     sat_low
);

wire signed [7:0] phase_error_s;
wire signed [7:0] kp_s;
wire signed [7:0] ki_s;

assign phase_error_s = $signed(phase_error);
assign kp_s          = $signed(kp);
assign ki_s          = $signed(ki);


    // =========================================================
    // FIXED-POINT FORMAT
    // =========================================================
    //
    // kp and ki use Q4.4 format.
    //
    // Stored value = real value * 16
    //
    // Examples:
    //
    // 1.0   -> 16
    // 0.5   -> 8
    // 0.25  -> 4
    // 0.125 -> 2
    //
    // The internal PI arithmetic therefore also keeps
    // 4 fractional bits.
    // =========================================================


    // =========================================================
    // CONSTANTS
    // =========================================================
    //
    // tuning_word range:
    //
    // 0 to 1023
    //
    // Reset / center value:
    //
    // 512
    //
    // Since internal arithmetic has 4 fractional bits:
    //
    // BIAS_Q = 512 * 16  = 8192
    // MAX_Q  = 1023 * 16 = 16368
    // =========================================================

    localparam signed [23:0] BIAS_Q = 24'sd8192;
    localparam signed [23:0] MAX_Q  = 24'sd16368;
    localparam signed [23:0] MIN_Q  = 24'sd0;


    // =========================================================
    // MULTIPLICATION RESULTS
    // =========================================================
    //
    // phase_error = signed 8-bit
    // kp          = signed 8-bit
    //
    // 8-bit x 8-bit multiplication can require 16 bits.
    // =========================================================

    wire signed [15:0] proportional_product;
    wire signed [15:0] integral_product;

    assign proportional_product = phase_error_s * kp_s;
    assign integral_product     = phase_error_s * ki_s;


    // =========================================================
    // SIGN EXTENSION
    // =========================================================
    //
    // Products are 16-bit signed values.
    //
    // Integrator / control datapath is 24-bit signed.
    //
    // Therefore extend the sign bit from 16 bits to 24 bits.
    // =========================================================

    wire signed [23:0] proportional_ext;
    wire signed [23:0] integral_ext;

    assign proportional_ext =
        {{8{proportional_product[15]}}, proportional_product};

    assign integral_ext =
        {{8{integral_product[15]}}, integral_product};


    // =========================================================
    // INTEGRATOR STATE REGISTER
    // =========================================================
    //
    // Stores accumulated Ki * phase_error.
    //
    // This is the "memory" of the PI controller.
    // =========================================================

    reg signed [23:0] integrator;


    // =========================================================
    // CANDIDATE / NEXT-STATE SIGNALS
    // =========================================================

    reg signed [23:0] candidate_integrator;
    reg signed [23:0] candidate_control;
    reg signed [23:0] final_control;

    reg signed [23:0] next_integrator;

    reg [9:0] next_tuning_word;

    reg next_sat_high;
    reg next_sat_low;


    // =========================================================
    // COMBINATIONAL NEXT-STATE LOGIC
    // =========================================================

    always @(*) begin

        // -----------------------------------------------------
        // DEFAULT VALUES
        //
        // If there is no new valid phase measurement,
        // maintain the current controller state.
        // -----------------------------------------------------

        next_integrator  = integrator;
        next_tuning_word = tuning_word;

        next_sat_high = sat_high;
        next_sat_low  = sat_low;


        // Default intermediate values

        candidate_integrator = integrator;

        candidate_control =
            BIAS_Q
            + proportional_ext
            + integrator;

        final_control =
            BIAS_Q
            + proportional_ext
            + integrator;


        // -----------------------------------------------------
        // Controller updates ONLY when:
        //
        // enable = 1
        // AND
        // error_valid = 1
        //
        // phase_error may remain unchanged between valid
        // measurements, so error_valid prevents repeated
        // integration of the same old error.
        // -----------------------------------------------------

        if (enable && error_valid) begin


            // =================================================
            // STEP 1:
            // Calculate candidate integrator
            // =================================================
            //
            // I[n] = I[n-1] + Ki * error
            // =================================================

            candidate_integrator =
                integrator + integral_ext;


            // =================================================
            // STEP 2:
            // Calculate candidate controller output
            // =================================================
            //
            // control =
            //
            // BIAS
            // +
            // Kp * error
            // +
            // candidate integrator
            // =================================================

            candidate_control =
                BIAS_Q
                + proportional_ext
                + candidate_integrator;


            // =================================================
            // STEP 3:
            // ANTI-WINDUP
            // =================================================
            //
            // If the proposed control value exceeds the
            // maximum AND phase_error is positive, the
            // integrator would push us even further upward.
            //
            // Reject that integral update.
            //
            // Similarly for negative saturation.
            // =================================================

            if ((candidate_control > MAX_Q) &&
                (phase_error_s > 0)) begin

                // Freeze integrator
                next_integrator = integrator;

            end

            else if ((candidate_control < MIN_Q) &&
                     (phase_error_s < 0)) begin

                // Freeze integrator
                next_integrator = integrator;

            end

            else begin

                // Candidate is safe or helping recovery.
                next_integrator = candidate_integrator;

            end


            // =================================================
            // STEP 4:
            // Recalculate final controller output
            // =================================================
            //
            // Important:
            //
            // candidate_integrator may have been rejected by
            // anti-windup.
            //
            // Therefore final_control must use
            // next_integrator.
            // =================================================

            final_control =
                BIAS_Q
                + proportional_ext
                + next_integrator;


            // =================================================
            // STEP 5:
            // OUTPUT SATURATION
            // =================================================

            if (final_control > MAX_Q) begin

                next_tuning_word = 10'd1023;

                next_sat_high = 1'b1;
                next_sat_low  = 1'b0;

            end

            else if (final_control < MIN_Q) begin

                next_tuning_word = 10'd0;

                next_sat_high = 1'b0;
                next_sat_low  = 1'b1;

            end

            else begin

                // ---------------------------------------------
                // Remove the four fractional bits.
                //
                // Internal Q4 value:
                //
                // actual value = stored value / 16
                //
                // Bits [3:0] are fractional.
                //
                // Bits [13:4] give the 10-bit tuning code.
                // ---------------------------------------------

                next_tuning_word = final_control[13:4];

                next_sat_high = 1'b0;
                next_sat_low  = 1'b0;

            end

        end

    end


    // =========================================================
    // SEQUENTIAL STATE REGISTERS
    // =========================================================

    always @(posedge tdc_clk or negedge reset_n) begin

        if (!reset_n) begin

            // Start VCO around center of tuning range

            tuning_word <= 10'd512;

            // No accumulated error initially

            integrator <= 24'sd0;

            // Saturation flags cleared

            sat_high <= 1'b0;
            sat_low  <= 1'b0;

        end

        else begin

            integrator  <= next_integrator;
            tuning_word <= next_tuning_word;

            sat_high <= next_sat_high;
            sat_low  <= next_sat_low;

        end

    end


endmodule
