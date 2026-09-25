`timescale 1ns/1ps

module behavioral_vco #(

    parameter real FREQ_MIN_MHZ = 25.0,
    parameter real FREQ_MAX_MHZ = 50.0

)(
    input  wire       reset_n,
    input  wire [9:0] tuning_word,

    output reg        vco_clk
);


    real frequency_mhz;
    real half_period_ns;


    // =========================================================
    // BEHAVIORAL VCO MODEL
    // =========================================================
    //
    // tuning_word = 0
    //      -> 25 MHz
    //
    // tuning_word = 1023
    //      -> 50 MHz
    //
    // Intermediate codes are linearly interpolated.
    //
    // This is SIMULATION-ONLY because of variable #delay.
    // =========================================================

    initial begin

        vco_clk        = 1'b0;
        frequency_mhz  = FREQ_MIN_MHZ;
        half_period_ns = 500.0 / FREQ_MIN_MHZ;


        forever begin

            if (!reset_n) begin

                vco_clk = 1'b0;

                #1;

            end

            else begin

                // ---------------------------------------------
                // Digital tuning-code to frequency mapping
                // ---------------------------------------------

                frequency_mhz =
                    FREQ_MIN_MHZ
                    +
                    ((FREQ_MAX_MHZ - FREQ_MIN_MHZ)
                    * tuning_word / 1023.0);


                // ---------------------------------------------
                // For frequency in MHz:
                //
                // Period(ns) = 1000 / F(MHz)
                //
                // Half period:
                //
                // = 500 / F(MHz)
                // ---------------------------------------------

                half_period_ns =
                    500.0 / frequency_mhz;


                #(half_period_ns);


                if (reset_n)
                    vco_clk = ~vco_clk;
                else
                    vco_clk = 1'b0;

            end

        end

    end


endmodule
