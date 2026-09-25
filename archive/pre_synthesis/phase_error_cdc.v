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

    // ============================================================
    // SOURCE DOMAIN
    //
    // The TDC produces an 8-bit phase error and a one-cycle
    // error_valid pulse.
    //
    // We cannot directly send that one-cycle pulse into the slower
    // control clock domain because the destination may miss it.
    //
    // Therefore:
    //
    // 1. Hold the phase-error data in a source register.
    // 2. Toggle req_toggle whenever a new sample is available.
    // 3. Destination detects the toggle.
    // 4. Destination captures the stable multi-bit data.
    // 5. Destination returns acknowledgement.
    // ============================================================

    reg [7:0] src_data_hold;
    reg       req_toggle;


    // ============================================================
    // ACKNOWLEDGEMENT SYNCHRONIZER
    //
    // ack_toggle originates in the destination clock domain.
    // Synchronize it back into src_clk using two flip-flops.
    // ============================================================

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


    // Source is busy until the destination acknowledges the request.

    assign src_busy =
        (req_toggle != ack_sync2);


    // ============================================================
    // SOURCE DATA CAPTURE
    // ============================================================

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


    // ============================================================
    // REQUEST SYNCHRONIZER
    //
    // req_toggle originates in the 200 MHz TDC domain.
    //
    // Synchronize it into the control domain.
    // ============================================================

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


    // ============================================================
    // DESTINATION DOMAIN
    //
    // When req_sync2 differs from ack_toggle, a new phase-error
    // sample is waiting.
    //
    // src_data_hold has been held stable throughout the request
    // synchronization interval.
    //
    // Capture it and generate a one-cycle dst_valid pulse.
    // ============================================================

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
