`timescale 1ns/1ps

module phase_error_tdc (

    input wire       tdc_clk,
    input wire       reset_n,

    // Clocks whose phase relationship is being measured
    input wire       ref_clk,
    input wire       feedback_clk,

    // Signed 8-bit two's-complement phase error
    //
    // positive : REF arrived first
    // negative : FEEDBACK arrived first
    //
    output reg [7:0] phase_error,

    // One-cycle pulse whenever a new measurement is ready
    output reg       error_valid
);


    // =========================================================
    // 1. SYNCHRONIZE REF CLOCK INTO TDC DOMAIN
    // =========================================================
    //
    // We synchronize the CLOCK LEVEL, whose high/low duration
    // is much larger than one 5 ns TDC period.
    //
    // This is very different from synchronizing the tiny reset
    // gaps in the old PFD UP/DOWN pulses.
    // =========================================================

    (* ASYNC_REG = "TRUE" *) reg ref_sync1;
    (* ASYNC_REG = "TRUE" *) reg ref_sync2;

    (* ASYNC_REG = "TRUE" *) reg fb_sync1;
    (* ASYNC_REG = "TRUE" *) reg fb_sync2;


    // Previous synchronized values for edge detection

    reg ref_sync2_d;
    reg fb_sync2_d;


    // =========================================================
    // 2. RISING EDGE DETECTION
    // =========================================================

    wire ref_rise;
    wire fb_rise;

    assign ref_rise =
        ref_sync2 & ~ref_sync2_d;

    assign fb_rise =
        fb_sync2 & ~fb_sync2_d;


    // =========================================================
    // 3. MEASUREMENT STATE MACHINE
    // =========================================================
    //
    // IDLE:
    //     waiting to see which clock edge arrives first
    //
    // WAIT_FB:
    //     REF arrived first
    //     count until FB arrives
    //
    // WAIT_REF:
    //     FB arrived first
    //     count until REF arrives
    // =========================================================

    localparam [1:0] IDLE     = 2'd0;
    localparam [1:0] WAIT_FB  = 2'd1;
    localparam [1:0] WAIT_REF = 2'd2;

    reg [1:0] state;


    // 7-bit counter:
    //
    // maximum measurement = 127 TDC cycles
    //
    // At 200 MHz:
    //
    // 127 * 5 ns = 635 ns

    reg [6:0] phase_count;


    // Temporary signed measurement representation

    reg signed [7:0] measured_error;


    // =========================================================
    // 4. INPUT SYNCHRONIZERS
    // =========================================================

    always @(posedge tdc_clk or negedge reset_n) begin

        if (!reset_n) begin

            ref_sync1  <= 1'b0;
            ref_sync2  <= 1'b0;
            ref_sync2_d <= 1'b0;

            fb_sync1   <= 1'b0;
            fb_sync2   <= 1'b0;
            fb_sync2_d <= 1'b0;

        end

        else begin

            // Two-flop synchronization

            ref_sync1 <= ref_clk;
            ref_sync2 <= ref_sync1;

            fb_sync1 <= feedback_clk;
            fb_sync2 <= fb_sync1;


            // Delayed synchronized copies used
            // for rising-edge detection.

            ref_sync2_d <= ref_sync2;
            fb_sync2_d  <= fb_sync2;

        end

    end


    // =========================================================
    // 5. PHASE MEASUREMENT LOGIC
    // =========================================================

    always @(posedge tdc_clk or negedge reset_n) begin

        if (!reset_n) begin

            state          <= IDLE;
            phase_count    <= 7'd0;

            phase_error    <= 8'sd0;
            measured_error <= 8'sd0;

            error_valid    <= 1'b0;

        end

        else begin

            // Default:
            // error_valid is a one-cycle pulse.

            error_valid <= 1'b0;


            case (state)


                // =================================================
                // IDLE
                // =================================================

                IDLE: begin

                    phase_count <= 7'd0;


                    // ---------------------------------------------
                    // Both edges detected in same TDC cycle.
                    //
                    // Their phase difference is below our
                    // 5 ns measurement resolution.
                    // ---------------------------------------------

                    if (ref_rise && fb_rise) begin

                        phase_error <= 8'sd0;

                        error_valid <= 1'b1;

                        state <= IDLE;

                    end


                    // ---------------------------------------------
                    // Reference arrived first.
                    //
                    // Start counting until feedback arrives.
                    // ---------------------------------------------

                    else if (ref_rise) begin

                        phase_count <= 7'd0;

                        state <= WAIT_FB;

                    end


                    // ---------------------------------------------
                    // Feedback arrived first.
                    //
                    // Start counting until reference arrives.
                    // ---------------------------------------------

                    else if (fb_rise) begin

                        phase_count <= 7'd0;

                        state <= WAIT_REF;

                    end

                end


                // =================================================
                // WAIT FOR FEEDBACK
                // =================================================
                //
                // Reference arrived first.
                //
                // Therefore resulting phase error is POSITIVE.
                // =================================================

                WAIT_FB: begin

                    if (fb_rise) begin

                        // -----------------------------------------
                        // phase_count starts at zero.
                        //
                        // If FB arrives one TDC cycle later:
                        //
                        // error = +1
                        //
                        // Therefore use phase_count + 1.
                        // -----------------------------------------

                        if (phase_count >= 7'd126)
                            measured_error = 8'sd127;

                        else
                            measured_error =
                                $signed({
                                    1'b0,
                                    phase_count
                                }) + 8'sd1;


                        phase_error <= measured_error;

                        error_valid <= 1'b1;


                        phase_count <= 7'd0;

                        state <= IDLE;

                    end


                    else begin

                        // Saturating counter

                        if (phase_count < 7'd127)
                            phase_count <=
                                phase_count + 7'd1;

                    end

                end


                // =================================================
                // WAIT FOR REFERENCE
                // =================================================
                //
                // Feedback arrived first.
                //
                // Therefore resulting phase error is NEGATIVE.
                // =================================================

                WAIT_REF: begin

                    if (ref_rise) begin

                        if (phase_count >= 7'd126)
                            measured_error = -8'sd127;

                        else
                            measured_error =
                                -(
                                    $signed({
                                        1'b0,
                                        phase_count
                                    }) + 8'sd1
                                 );


                        phase_error <= measured_error;

                        error_valid <= 1'b1;


                        phase_count <= 7'd0;

                        state <= IDLE;

                    end


                    else begin

                        // Saturating counter

                        if (phase_count < 7'd127)
                            phase_count <=
                                phase_count + 7'd1;

                    end

                end


                // =================================================
                // SAFETY DEFAULT
                // =================================================

                default: begin

                    state       <= IDLE;
                    phase_count <= 7'd0;

                end

            endcase

        end

    end


endmodule
