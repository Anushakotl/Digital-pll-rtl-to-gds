`timescale 1ns/1ps

module phase_error_cdc (
    input  wire       src_clk,
    input  wire       dst_clk,
    input  wire       reset_n,

    input  wire [7:0] src_phase_error,
    input  wire       src_valid,

    output reg  [7:0] dst_phase_error,
    output reg        dst_valid,

    output wire       src_busy
);


    reg [7:0] src_data_hold;
    reg       req_toggle;

    reg ack_sync1;
    reg ack_sync2;

    reg ack_toggle;


    always @(posedge src_clk or negedge reset_n) begin

        if (!reset_n) begin
            ack_sync1 <= 1'b0;
            ack_sync2 <= 1'b0;
        end

        else begin
            ack_sync1 <= ack_toggle;
            ack_sync2 <= ack_sync1;
        end

    end

    assign src_busy =
        (req_toggle != ack_sync2);
    always @(posedge src_clk or negedge reset_n) begin

        if (!reset_n) begin

            src_data_hold <= 8'd0;
            req_toggle    <= 1'b0;

        end

        else begin

            if (src_valid && !src_busy) begin

                src_data_hold <= src_phase_error;

                req_toggle <= ~req_toggle;

            end

        end

    end

    (* ASYNC_REG = "TRUE" *) reg req_sync1;
    (* ASYNC_REG = "TRUE" *) reg req_sync2;


    always @(posedge dst_clk or negedge reset_n) begin

        if (!reset_n) begin

            req_sync1 <= 1'b0;
            req_sync2 <= 1'b0;

        end

        else begin

            req_sync1 <= req_toggle;
            req_sync2 <= req_sync1;

        end

    end

    always @(posedge dst_clk or negedge reset_n) begin

        if (!reset_n) begin

            dst_phase_error <= 8'd0;
            dst_valid       <= 1'b0;

            ack_toggle      <= 1'b0;

        end

        else begin

            dst_valid <= 1'b0;

            if (req_sync2 != ack_toggle) begin

                dst_phase_error <= src_data_hold;

                dst_valid <= 1'b1;

                ack_toggle <= req_sync2;

            end

        end

    end


endmodule
