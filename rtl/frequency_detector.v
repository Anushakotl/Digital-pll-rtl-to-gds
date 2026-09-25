`timescale 1ns/1ps

module frequency_detector #(


    parameter WINDOW_CYCLES = 16'd400

)(

    input  wire             tdc_clk,
    input  wire             reset_n,
    input  wire             enable,

    input  wire             ref_clk,
    input  wire             feedback_clk,

    output reg signed [7:0] freq_error,

    output reg              freq_valid
);


    // =========================================================
    // SYNCHRONIZE BOTH CLOCK LEVELS INTO TDC DOMAIN
    // =========================================================

    (* ASYNC_REG = "TRUE" *) reg ref_sync1;
    (* ASYNC_REG = "TRUE" *) reg ref_sync2;

    (* ASYNC_REG = "TRUE" *) reg fb_sync1;
    (* ASYNC_REG = "TRUE" *) reg fb_sync2;


    // Delayed copies for rising-edge detection

    reg ref_sync2_d;
    reg fb_sync2_d;


    wire ref_rise;
    wire fb_rise;

    assign ref_rise =
        ref_sync2 & ~ref_sync2_d;

    assign fb_rise =
        fb_sync2 & ~fb_sync2_d;


    // =========================================================
    // SYNCHRONIZERS
    // =========================================================

    always @(posedge tdc_clk or negedge reset_n) begin

        if (!reset_n) begin

            ref_sync1   <= 1'b0;
            ref_sync2   <= 1'b0;
            ref_sync2_d <= 1'b0;

            fb_sync1    <= 1'b0;
            fb_sync2    <= 1'b0;
            fb_sync2_d  <= 1'b0;

        end

        else begin

            ref_sync1 <= ref_clk;
            ref_sync2 <= ref_sync1;

            fb_sync1 <= feedback_clk;
            fb_sync2 <= fb_sync1;


            ref_sync2_d <= ref_sync2;
            fb_sync2_d  <= fb_sync2;

        end

    end


    // =========================================================
    // EDGE COUNTERS
    // =========================================================

    reg [15:0] window_count;

    reg [7:0] ref_edge_count;
    reg [7:0] fb_edge_count;


    // Temporary counts including an edge that may occur
    // on the final measurement cycle.

    reg [8:0] ref_count_final;
    reg [8:0] fb_count_final;

    reg signed [9:0] error_temp;


    // =========================================================
    // FREQUENCY MEASUREMENT
    // =========================================================

    always @(posedge tdc_clk or negedge reset_n) begin

        if (!reset_n) begin

            window_count   <= 16'd0;

            ref_edge_count <= 8'd0;
            fb_edge_count  <= 8'd0;

            freq_error     <= 8'sd0;
            freq_valid     <= 1'b0;

            ref_count_final <= 9'd0;
            fb_count_final  <= 9'd0;

            error_temp <= 10'sd0;

        end


        else begin

            // Default: valid is only a one-cycle pulse

            freq_valid <= 1'b0;


            if (!enable) begin

                window_count   <= 16'd0;

                ref_edge_count <= 8'd0;
                fb_edge_count  <= 8'd0;

                freq_error <= 8'sd0;

            end


            else begin

                // ---------------------------------------------
                // NORMAL WINDOW COUNTING
                // ---------------------------------------------

                if (window_count <
                    (WINDOW_CYCLES - 16'd1)) begin

                    window_count <=
                        window_count + 16'd1;


                    if (ref_rise &&
                        ref_edge_count < 8'd255)

                        ref_edge_count <=
                            ref_edge_count + 8'd1;


                    if (fb_rise &&
                        fb_edge_count < 8'd255)

                        fb_edge_count <=
                            fb_edge_count + 8'd1;

                end


                // ---------------------------------------------
                // END OF MEASUREMENT WINDOW
                // ---------------------------------------------

                else begin

                    // Include edges occurring during
                    // the final window cycle.

                    ref_count_final =
                        {1'b0, ref_edge_count};

                    fb_count_final =
                        {1'b0, fb_edge_count};


                    if (ref_rise)
                        ref_count_final =
                            ref_count_final + 9'd1;


                    if (fb_rise)
                        fb_count_final =
                            fb_count_final + 9'd1;



                    error_temp =
                        $signed({
                            1'b0,
                            ref_count_final
                        })
                        -
                        $signed({
                            1'b0,
                            fb_count_final
                        });


                    // Saturate to signed 8-bit range

                    if (error_temp > 10'sd127)

                        freq_error <=
                            8'sd127;


                    else if (error_temp < -10'sd127)

                        freq_error <=
                            -8'sd127;


                    else

                        freq_error <=
                            error_temp[7:0];


                    freq_valid <= 1'b1;


                    // Start next measurement window

                    window_count   <= 16'd0;

                    ref_edge_count <= 8'd0;
                    fb_edge_count  <= 8'd0;

                end

            end

        end

    end


endmodule
