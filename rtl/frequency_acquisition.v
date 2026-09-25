`timescale 1ns/1ps

module frequency_acquisition (

    input  wire              tdc_clk,
    input  wire              reset_n,
    input  wire              enable,

    input  wire [9:0]        seed_tuning_word,

    input  wire signed [7:0] freq_error,
    input  wire              freq_valid,

    output reg  [9:0]        tuning_word,
    output reg               freq_locked
);


    parameter [9:0] INITIAL_TUNING = 10'd512;

    parameter [7:0] FREQ_LOCK_THRESHOLD = 8'd1;

    parameter [2:0] LOCK_COUNT_REQUIRED = 3'd3;


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


    wire signed [12:0] freq_error_ext;

    assign freq_error_ext =
        {
            {5{freq_error[7]}},
            freq_error
        };


    wire signed [12:0] correction;

    assign correction =
        freq_error_ext <<< 4;


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
    // FREQUENCY ACQUISITION
    // =========================================================

    always @(posedge tdc_clk or negedge reset_n) begin

        if (!reset_n) begin

            tuning_word <= INITIAL_TUNING;

            lock_count <= 3'd0;

            freq_locked <= 1'b0;

        end

        else if (!enable) begin

            tuning_word <= seed_tuning_word;

            lock_count <= 3'd0;

            freq_locked <= 1'b0;

        end


        else begin

            if (freq_valid) begin


                // =================================================
                // FREQUENCY CLOSE ENOUGH
                // =================================================

                if (abs_freq_error <= FREQ_LOCK_THRESHOLD) begin

                    // Keep coarse tuning fixed.

                    tuning_word <= tuning_word;


                    if (lock_count < LOCK_COUNT_REQUIRED)

                        lock_count <=
                            lock_count + 3'd1;


                    if (lock_count >=
                        (LOCK_COUNT_REQUIRED - 3'd1))

                        freq_locked <= 1'b1;

                end


                // =================================================
                // FREQUENCY STILL NEEDS CORRECTION
                // =================================================

                else begin

                    lock_count <= 3'd0;

                    freq_locked <= 1'b0;


                    if (candidate_tuning < 13'sd0)

                        tuning_word <= 10'd0;


                    else if (candidate_tuning > 13'sd1023)

                        tuning_word <= 10'd1023;


                    else

                        tuning_word <=
                            candidate_tuning[9:0];

                end

            end

        end

    end


endmodule
