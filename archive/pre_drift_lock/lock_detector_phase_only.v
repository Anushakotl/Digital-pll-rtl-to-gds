`timescale 1ns/1ps

module lock_detector #(

    // ---------------------------------------------------------
    // Lock qualification parameters
    // ---------------------------------------------------------

    parameter [8:0] LOCK_THRESHOLD      = 9'd4,
    parameter [8:0] LOSS_THRESHOLD      = 9'd12,

    parameter [7:0] LOCK_COUNT_REQUIRED = 8'd10,
    parameter [7:0] LOSS_COUNT_REQUIRED = 8'd5

)(
    input  wire                    tdc_clk,
    input  wire                    reset_n,
    input  wire                    enable,

    input  wire [7:0]       phase_error,
    input  wire                    error_valid,

    output reg                     locked
);

wire signed [7:0] phase_error_s;

assign phase_error_s = $signed(phase_error);


    // =========================================================
    // INTERNAL REGISTERS
    // =========================================================

    reg [7:0] lock_count;
    reg [7:0] loss_count;


    // =========================================================
    // ABSOLUTE PHASE ERROR
    // =========================================================
    //
    // phase_error is signed:
    //
    // +6 -> magnitude 6
    // -6 -> magnitude 6
    //
    // We extend from 8 bits to 9 bits first so that even
    // -128 can be converted to magnitude +128 safely.
    // =========================================================

    wire signed [8:0] phase_error_ext;
    wire        [8:0] abs_error;

    assign phase_error_ext =
        {phase_error_s[7], phase_error_s};

    assign abs_error =
        phase_error_ext[8] ?
        -phase_error_ext :
         phase_error_ext;


    // =========================================================
    // LOCK DETECTION STATE LOGIC
    // =========================================================

    always @(posedge tdc_clk or negedge reset_n) begin

        if (!reset_n) begin

            locked     <= 1'b0;
            lock_count <= 8'd0;
            loss_count <= 8'd0;

        end

        else if (!enable) begin

            locked     <= 1'b0;
            lock_count <= 8'd0;
            loss_count <= 8'd0;

        end

        else if (error_valid) begin


            // =================================================
            // CURRENTLY UNLOCKED
            // =================================================

            if (!locked) begin

                // Loss counter has no meaning while unlocked.
                loss_count <= 8'd0;


                // ---------------------------------------------
                // Is phase error sufficiently small?
                // ---------------------------------------------

                if (abs_error <= LOCK_THRESHOLD) begin

                    // Current sample is a good lock sample.

                    if (lock_count >=
                        (LOCK_COUNT_REQUIRED - 8'd1)) begin

                        // Required number of consecutive
                        // measurements has been achieved.

                        locked     <= 1'b1;
                        lock_count <= 8'd0;

                    end

                    else begin

                        lock_count <= lock_count + 8'd1;

                    end

                end

                else begin

                    // One bad measurement breaks the
                    // consecutive lock sequence.

                    lock_count <= 8'd0;

                end

            end


            // =================================================
            // CURRENTLY LOCKED
            // =================================================

            else begin

                // Lock qualification counter no longer needed.

                lock_count <= 8'd0;


                // ---------------------------------------------
                // Check whether phase error is large enough
                // to indicate possible loss of lock.
                // ---------------------------------------------

                if (abs_error >= LOSS_THRESHOLD) begin

                    // Bad sample while locked.

                    if (loss_count >=
                        (LOSS_COUNT_REQUIRED - 8'd1)) begin

                        // Too many consecutive bad measurements.

                        locked     <= 1'b0;
                        loss_count <= 8'd0;

                    end

                    else begin

                        loss_count <= loss_count + 8'd1;

                    end

                end

                else begin

                    // Error is still inside the loss threshold.
                    //
                    // Stay locked and clear the bad-sample
                    // sequence.

                    loss_count <= 8'd0;

                end

            end

        end

    end


endmodule
