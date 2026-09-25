`timescale 1ns/1ps

module lock_detector #(

    parameter [8:0] LOCK_THRESHOLD       = 9'd4,
    parameter [8:0] DRIFT_THRESHOLD      = 9'd2,

    parameter [8:0] LOSS_THRESHOLD       = 9'd12,

    parameter [7:0] LOCK_COUNT_REQUIRED  = 8'd10,
    parameter [7:0] LOSS_COUNT_REQUIRED  = 8'd5

)(


    input  wire       tdc_clk,
    input  wire       reset_n,
    input  wire       enable,

    input  wire [7:0] phase_error,
    input  wire       error_valid,

    output reg        locked
);


    // =========================================================
    // SIGNED PHASE ERROR
    // =========================================================

    wire signed [7:0] phase_error_s;

    assign phase_error_s = $signed(phase_error);


    // =========================================================
    // ABSOLUTE CURRENT PHASE ERROR
    // =========================================================

    wire signed [8:0] phase_error_ext;
    wire        [8:0] abs_error;

    assign phase_error_ext =
        {phase_error_s[7], phase_error_s};

    assign abs_error =
        phase_error_ext[8] ?
        -phase_error_ext :
         phase_error_ext;
   
    // PHASE-ERROR HISTORY
    reg [7:0] phase_delay_1;
    reg [7:0] phase_delay_2;
    reg [7:0] phase_delay_3;
    reg [7:0] phase_delay_4;

    reg [2:0] history_count;

    // PHASE DRIFT CALCULATION

    wire signed [7:0] phase_delay_4_s;

    assign phase_delay_4_s =
        $signed(phase_delay_4);


    wire signed [8:0] delayed_phase_ext;

    assign delayed_phase_ext =
        {phase_delay_4_s[7], phase_delay_4_s};


    wire signed [8:0] phase_drift;

    assign phase_drift =
        phase_error_ext - delayed_phase_ext;


    wire [8:0] abs_drift;

    assign abs_drift =
        phase_drift[8] ?
        -phase_drift :
         phase_drift;


    // =========================================================
    // LOCK / LOSS COUNTERS
    // =========================================================

    reg [7:0] lock_count;
    reg [7:0] loss_count;


    // =========================================================
    // MAIN LOCK-DETECTOR LOGIC
    // =========================================================

    always @(posedge tdc_clk or negedge reset_n) begin

        if (!reset_n) begin

            locked <= 1'b0;

            lock_count <= 8'd0;
            loss_count <= 8'd0;

            phase_delay_1 <= 8'd0;
            phase_delay_2 <= 8'd0;
            phase_delay_3 <= 8'd0;
            phase_delay_4 <= 8'd0;

            history_count <= 3'd0;

        end


        else if (!enable) begin

            locked <= 1'b0;

            lock_count <= 8'd0;
            loss_count <= 8'd0;

            phase_delay_1 <= 8'd0;
            phase_delay_2 <= 8'd0;
            phase_delay_3 <= 8'd0;
            phase_delay_4 <= 8'd0;

            history_count <= 3'd0;

        end


        else if (error_valid) begin


            // =================================================
            // UPDATE PHASE-ERROR HISTORY
            // =================================================

            phase_delay_4 <= phase_delay_3;
            phase_delay_3 <= phase_delay_2;
            phase_delay_2 <= phase_delay_1;
            phase_delay_1 <= phase_error;

            if (history_count < 3'd4)
                history_count <= history_count + 3'd1;


            // =================================================
            // CURRENTLY UNLOCKED
            // =================================================

            if (!locked) begin

                loss_count <= 8'd0;

                if (history_count >= 3'd4) begin

                    if ((abs_error <= LOCK_THRESHOLD) &&
                        (abs_drift <= DRIFT_THRESHOLD)) begin


                        if (lock_count >=
                            (LOCK_COUNT_REQUIRED - 8'd1)) begin

                            locked     <= 1'b1;

                            lock_count <= 8'd0;

                        end


                        else begin

                            lock_count <= lock_count + 8'd1;

                        end

                    end


                    else begin

                        lock_count <= 8'd0;

                    end

                end


                else begin

                    lock_count <= 8'd0;

                end

            end


            // =================================================
            // CURRENTLY LOCKED
            // =================================================

            else begin

                lock_count <= 8'd0;
                if (abs_error >= LOSS_THRESHOLD) begin


                    if (loss_count >=
                        (LOSS_COUNT_REQUIRED - 8'd1)) begin

                        locked <= 1'b0;

                        loss_count <= 8'd0;

                    end


                    else begin

                        loss_count <= loss_count + 8'd1;

                    end

                end


                else begin

                    loss_count <= 8'd0;

                end

            end

        end

    end


endmodule
