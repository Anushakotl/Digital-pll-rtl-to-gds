`timescale 1ns/1ps

module lock_detector #(

    // =========================================================
    // LOCK QUALIFICATION PARAMETERS
    // =========================================================
    //
    // To ENTER lock:
    //
    //   |phase_error| <= LOCK_THRESHOLD
    //
    // AND
    //
    //   |phase_error[n] - phase_error[n-4]|
    //        <= DRIFT_THRESHOLD
    //
    // for LOCK_COUNT_REQUIRED consecutive valid samples.
    //
    // To LEAVE lock:
    //
    //   |phase_error| >= LOSS_THRESHOLD
    //
    // for LOSS_COUNT_REQUIRED consecutive valid samples.
    // =========================================================

    parameter [8:0] LOCK_THRESHOLD       = 9'd4,
    parameter [8:0] DRIFT_THRESHOLD      = 9'd2,

    parameter [8:0] LOSS_THRESHOLD       = 9'd12,

    parameter [7:0] LOCK_COUNT_REQUIRED  = 8'd10,
    parameter [7:0] LOSS_COUNT_REQUIRED  = 8'd5

)(

    // NOTE:
    //
    // This port retains the original name tdc_clk.
    // In pll_digital_top it is connected to ctrl_clk = 50 MHz.

    input  wire       tdc_clk,
    input  wire       reset_n,
    input  wire       enable,

    input  wire [7:0] phase_error,
    input  wire       error_valid,

    output reg        locked
);


    // =========================================================
    // SIGNED PHASE ERROR
    // =========================================================

    wire signed [7:0] phase_error_s;

    assign phase_error_s = $signed(phase_error);


    // =========================================================
    // ABSOLUTE CURRENT PHASE ERROR
    // =========================================================
    //
    // Extend to 9 bits first so -128 can safely become +128.
    // =========================================================

    wire signed [8:0] phase_error_ext;
    wire        [8:0] abs_error;

    assign phase_error_ext =
        {phase_error_s[7], phase_error_s};

    assign abs_error =
        phase_error_ext[8] ?
        -phase_error_ext :
         phase_error_ext;


    // =========================================================
    // PHASE-ERROR HISTORY
    // =========================================================
    //
    // Store the last four VALID phase-error measurements.
    //
    // delay_4 contains the phase error from four valid
    // measurements earlier.
    //
    // This allows us to estimate whether phase is still
    // drifting with time.
    //
    // If phase keeps drifting, a frequency mismatch still
    // exists even if phase_error happens to pass near zero.
    // =========================================================

    reg [7:0] phase_delay_1;
    reg [7:0] phase_delay_2;
    reg [7:0] phase_delay_3;
    reg [7:0] phase_delay_4;

    reg [2:0] history_count;


    // =========================================================
    // PHASE DRIFT CALCULATION
    // =========================================================
    //
    // drift =
    //
    //     current phase error
    //              -
    //     phase error four valid samples ago
    //
    // Example:
    //
    // current = +2
    // old     = +1
    //
    // drift   = +1       -> good
    //
    //
    // current = -2
    // old     = +3
    //
    // drift   = -5       -> still moving too quickly
    // =========================================================

    wire signed [7:0] phase_delay_4_s;

    assign phase_delay_4_s =
        $signed(phase_delay_4);


    wire signed [8:0] delayed_phase_ext;

    assign delayed_phase_ext =
        {phase_delay_4_s[7], phase_delay_4_s};


    wire signed [8:0] phase_drift;

    assign phase_drift =
        phase_error_ext - delayed_phase_ext;


    wire [8:0] abs_drift;

    assign abs_drift =
        phase_drift[8] ?
        -phase_drift :
         phase_drift;


    // =========================================================
    // LOCK / LOSS COUNTERS
    // =========================================================

    reg [7:0] lock_count;
    reg [7:0] loss_count;


    // =========================================================
    // MAIN LOCK-DETECTOR LOGIC
    // =========================================================

    always @(posedge tdc_clk or negedge reset_n) begin

        if (!reset_n) begin

            locked <= 1'b0;

            lock_count <= 8'd0;
            loss_count <= 8'd0;

            phase_delay_1 <= 8'd0;
            phase_delay_2 <= 8'd0;
            phase_delay_3 <= 8'd0;
            phase_delay_4 <= 8'd0;

            history_count <= 3'd0;

        end


        else if (!enable) begin

            locked <= 1'b0;

            lock_count <= 8'd0;
            loss_count <= 8'd0;

            phase_delay_1 <= 8'd0;
            phase_delay_2 <= 8'd0;
            phase_delay_3 <= 8'd0;
            phase_delay_4 <= 8'd0;

            history_count <= 3'd0;

        end


        else if (error_valid) begin


            // =================================================
            // UPDATE PHASE-ERROR HISTORY
            // =================================================

            phase_delay_4 <= phase_delay_3;
            phase_delay_3 <= phase_delay_2;
            phase_delay_2 <= phase_delay_1;
            phase_delay_1 <= phase_error;


            // Fill the four-sample history first.

            if (history_count < 3'd4)
                history_count <= history_count + 3'd1;


            // =================================================
            // CURRENTLY UNLOCKED
            // =================================================

            if (!locked) begin

                loss_count <= 8'd0;


                // ---------------------------------------------
                // We cannot evaluate phase drift until four
                // previous valid samples have been collected.
                // ---------------------------------------------

                if (history_count >= 3'd4) begin


                    // -----------------------------------------
                    // TRUE LOCK CANDIDATE:
                    //
                    // 1. Phase error is small.
                    //
                    // 2. Phase error is not significantly
                    //    drifting with time.
                    // -----------------------------------------

                    if ((abs_error <= LOCK_THRESHOLD) &&
                        (abs_drift <= DRIFT_THRESHOLD)) begin


                        if (lock_count >=
                            (LOCK_COUNT_REQUIRED - 8'd1)) begin

                            locked     <= 1'b1;

                            lock_count <= 8'd0;

                        end


                        else begin

                            lock_count <= lock_count + 8'd1;

                        end

                    end


                    else begin

                        // A bad phase or drift measurement
                        // breaks the consecutive lock sequence.

                        lock_count <= 8'd0;

                    end

                end


                else begin

                    // Still filling history.

                    lock_count <= 8'd0;

                end

            end


            // =================================================
            // CURRENTLY LOCKED
            // =================================================

            else begin

                lock_count <= 8'd0;


                // ---------------------------------------------
                // LOSS-OF-LOCK QUALIFICATION
                //
                // Once locked, tolerate normal small phase
                // movement.
                //
                // Only declare loss when phase error becomes
                // significantly large for several consecutive
                // valid measurements.
                // ---------------------------------------------

                if (abs_error >= LOSS_THRESHOLD) begin


                    if (loss_count >=
                        (LOSS_COUNT_REQUIRED - 8'd1)) begin

                        locked <= 1'b0;

                        loss_count <= 8'd0;

                    end


                    else begin

                        loss_count <= loss_count + 8'd1;

                    end

                end


                else begin

                    loss_count <= 8'd0;

                end

            end

        end

    end


endmodule
