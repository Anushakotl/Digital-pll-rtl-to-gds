`timescale 1ns/1ps

module frequency_acquisition (

    input  wire              tdc_clk,
    input  wire              reset_n,
    input  wire              enable,

    input  wire signed [7:0] freq_error,
    input  wire              freq_valid,

    output reg  [9:0]        tuning_word,
    output reg               freq_locked
);


    // =========================================================
    // PARAMETERS
    // =========================================================

    // Initial VCO tuning code.
    //
    // For the current behavioral VCO:
    //
    // code 0    -> 25 MHz
    // code 1023 -> 50 MHz
    //
    // code 512  -> approximately 37.5 MHz
    //
    // divided by 4:
    //
    // feedback ≈ 9.375 MHz

    parameter [9:0] INITIAL_TUNING = 10'd512;


    // Frequency error of +/-1 count is considered
    // sufficiently close for handoff to the fine
    // phase-tracking loop.

    parameter [7:0] FREQ_LOCK_THRESHOLD = 8'd1;


    // Require three consecutive good frequency
    // measurement windows.

    parameter [2:0] LOCK_COUNT_REQUIRED = 3'd3;


    // =========================================================
    // LOCK COUNTER
    // =========================================================

    reg [2:0] lock_count;


    // =========================================================
    // ABSOLUTE FREQUENCY ERROR
    // =========================================================

    wire [7:0] abs_freq_error;

    assign abs_freq_error =
        freq_error[7]
        ?
        (~freq_error + 8'd1)
        :
        freq_error;


    // =========================================================
    // COARSE CORRECTION
    // =========================================================
    //
    // Frequency detector window:
    //
    // 2000 cycles / 200 MHz = 10 us
    //
    // One error count therefore represents about:
    //
    // 1 / 10 us = 100 kHz
    //
    //
    // VCO gain:
    //
    // (50 MHz - 25 MHz) / 1023
    // ≈ 24.44 kHz / code
    //
    // After divide-by-4:
    //
    // ≈ 6.11 kHz / code
    //
    //
    // Codes required for 100 kHz correction:
    //
    // 100 / 6.11 ≈ 16.4
    //
    // Therefore:
    //
    // tuning correction ≈ freq_error * 16
    //
    // Multiplication by 16 is implemented as << 4.
    // =========================================================


    // Sign-extend BEFORE shifting.
    //
    // This is important.
    //
    // If we shifted the original 8-bit value directly,
    // large corrections could overflow the 8-bit width.

    wire signed [12:0] freq_error_ext;

    assign freq_error_ext =
        {
            {5{freq_error[7]}},
            freq_error
        };


    wire signed [12:0] correction;

    assign correction =
        freq_error_ext <<< 4;


    // Convert tuning word into a positive signed value
    // for the addition.

    wire signed [12:0] tuning_ext;

    assign tuning_ext =
        $signed({
            3'b000,
            tuning_word
        });


    wire signed [12:0] candidate_tuning;

    assign candidate_tuning =
        tuning_ext + correction;


    // =========================================================
    // FREQUENCY ACQUISITION CONTROLLER
    // =========================================================

    always @(posedge tdc_clk or negedge reset_n) begin

        if (!reset_n) begin

            tuning_word <= INITIAL_TUNING;

            lock_count   <= 3'd0;

            freq_locked  <= 1'b0;

        end

        else if (!enable) begin

            // Hold the tuning word.
            //
            // This is useful later when control is handed
            // from coarse frequency acquisition to the
            // fine phase PI loop.

            tuning_word <= tuning_word;

            lock_count  <= 3'd0;

            freq_locked <= 1'b0;

        end

        else begin

            if (freq_valid) begin


                // =================================================
                // FREQUENCY IS CLOSE ENOUGH
                // =================================================

                if (abs_freq_error <= FREQ_LOCK_THRESHOLD) begin

                    // Do NOT keep changing the tuning word
                    // for +/-1 count.
                    //
                    // That prevents coarse-loop dithering.
                    //
                    // The fine PLL will later correct the
                    // remaining small frequency/phase error.

                    tuning_word <= tuning_word;


                    if (lock_count <
                        LOCK_COUNT_REQUIRED)

                        lock_count <=
                            lock_count + 3'd1;


                    if (lock_count >=
                        (LOCK_COUNT_REQUIRED - 3'd1))

                        freq_locked <= 1'b1;

                end


                // =================================================
                // FREQUENCY ERROR STILL LARGE
                // =================================================

                else begin

                    lock_count  <= 3'd0;

                    freq_locked <= 1'b0;


                    // ---------------------------------------------
                    // LOW SATURATION
                    // ---------------------------------------------

                    if (candidate_tuning < 13'sd0)

                        tuning_word <=
                            10'd0;


                    // ---------------------------------------------
                    // HIGH SATURATION
                    // ---------------------------------------------

                    else if (candidate_tuning > 13'sd1023)

                        tuning_word <=
                            10'd1023;


                    // ---------------------------------------------
                    // NORMAL UPDATE
                    // ---------------------------------------------

                    else

                        tuning_word <=
                            candidate_tuning[9:0];

                end

            end

        end

    end


endmodule
