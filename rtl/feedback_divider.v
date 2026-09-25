`timescale 1ns/1ps

module feedback_divider (
    input  wire       vco_clk,
    input  wire       reset_n,
    input  wire       enable,
    input  wire [7:0] divide_value,

    output reg        feedback_clk
);

    reg [7:0] div_count;


    always @(posedge vco_clk or negedge reset_n) begin

        if (!reset_n) begin

            div_count    <= 8'd0;
            feedback_clk <= 1'b0;

        end

        else if (!enable) begin

            div_count    <= 8'd0;
            feedback_clk <= 1'b0;

        end

        else if (divide_value < 8'd2) begin

            // Invalid divider configuration

            div_count    <= 8'd0;
            feedback_clk <= 1'b0;

        end

        else begin


            if (div_count >= ((divide_value >> 1) - 1'b1)) begin

                div_count    <= 8'd0;
                feedback_clk <= ~feedback_clk;

            end

            else begin

                div_count <= div_count + 8'd1;

            end

        end

    end

endmodule
