`timescale 1ns/1ps
module phase_error_tdc(
	input wire tdc_clk,
	input wire reset_n,
	input wire UP,
	input wire DOWN,
	output reg [7:0] phase_error,
	output reg error_valid
);

(* ASYNC_REG = "TRUE" *) reg up_sync1;
(* ASYNC_REG = "TRUE" *) reg up_sync2;
(* ASYNC_REG = "TRUE" *) reg down_sync1;
(* ASYNC_REG = "TRUE" *) reg down_sync2;

reg[6:0] up_count;
reg[6:0] down_count;
reg measurement_active;

wire signed [7:0] up_count_signed;
wire signed [7:0] down_count_signed;

assign up_count_signed = $signed({1'b0, up_count});
assign down_count_signed = $signed({1'b0, down_count});

always@(posedge tdc_clk or negedge reset_n) begin
	if(!reset_n) begin
		up_sync1 <= 1'b0;
		up_sync2 <= 1'b0;
		down_sync1 <= 1'b0;
		down_sync2 <= 1'b0;
	end
	else begin
	
		up_sync1 <= UP;
		down_sync1 <= DOWN;
		up_sync2 <= up_sync1;
		down_sync2 <= down_sync1;
	end
end

always@(posedge tdc_clk or negedge reset_n) begin

	if(!reset_n) begin
		up_count <= 7'd0;
		down_count <= 7'd0;
		measurement_active <= 1'b0;
		phase_error <= 8'sd0;
		error_valid <= 1'b0;
	end
	else begin
		error_valid <= 1'b0;
	if(up_sync2) begin
	
		if(up_count < 7'd127)
			up_count <= up_count + 7'd1;
	end

	if(down_sync2) begin

		if(down_count < 7'd127)
			down_count <= down_count + 7'd1;
	end

	if(!measurement_active) begin

		if(up_sync2 || down_sync2)
			measurement_active <= 1'b1;
	end

	else begin

		if(!up_sync2 && !down_sync2) begin
			phase_error <= up_count_signed - down_count_signed;
			error_valid <= 1'b1;
			up_count <= 7'd0;
			down_count <= 7'd0;
			measurement_active <= 1'b0;
		end
	end
end
end

endmodule
