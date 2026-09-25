`timescale 1ns/1ps
module phase_frequency_detector(
	input wire ref_clk,
	input wire  fb_clk,
	input wire reset_n,
	output reg UP,
	output reg DOWN
);

wire reset_both;

assign reset_both = UP & DOWN;

//Reference clock side

always@(posedge ref_clk or negedge reset_n or posedge reset_both) begin
	if(!reset_n)
	   UP <= 1'b0;
	else if(reset_both)
	  UP <= 1'b0;
	else
	  UP <= 1'b1;
end

//Feedback clock side
always@(posedge fb_clk or negedge reset_n or posedge reset_both) begin
	if(!reset_n)
	  DOWN <= 1'b0;
	else if(reset_both)
	  DOWN <= 1'b0;
	else
	  DOWN <= 1'b1;
end

endmodule
