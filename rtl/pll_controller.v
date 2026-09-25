`timescale 1ns/1ps

module pll_controller #(

    parameter [8:0] ACQUIRE_RETURN_THRESHOLD = 9'd12

)(

    input  wire       tdc_clk,
    input  wire       reset_n,
    input  wire       start,

    input  wire [7:0] phase_error,
    input  wire       error_valid,

    input  wire       locked,

    // Coarse frequency-acquisition result
    input  wire       freq_locked,


    // Fine PI enable
    output reg        loop_enable,

    // Coarse frequency-loop enable
    output reg        freq_acquire_enable,

    output reg [7:0]  kp,
    output reg [7:0]  ki,

    output reg [2:0]  state

);


    // =========================================================
    // STATES
    // =========================================================

    localparam [2:0] RESET_STATE     = 3'd0;
    localparam [2:0] IDLE_STATE      = 3'd1;
    localparam [2:0] ACQUIRE_STATE   = 3'd2;
    localparam [2:0] TRACK_STATE     = 3'd3;
    localparam [2:0] LOCKED_STATE    = 3'd4;
    localparam [2:0] REACQUIRE_STATE = 3'd5;


    reg [2:0] next_state;


    // =========================================================
    // ABSOLUTE PHASE ERROR
    // =========================================================

    wire signed [7:0] phase_error_s;

    wire signed [8:0] phase_error_ext;

    wire [8:0] abs_error;


    assign phase_error_s =
        $signed(phase_error);


    assign phase_error_ext =
        {
            phase_error_s[7],
            phase_error_s
        };


    assign abs_error =
        phase_error_ext[8]
        ?
        -phase_error_ext
        :
        phase_error_ext;


    // =========================================================
    // NEXT STATE
    // =========================================================

    always @(*) begin

        next_state = state;


        case (state)


            RESET_STATE: begin

                next_state =
                    IDLE_STATE;

            end


            IDLE_STATE: begin

                if (start)

                    next_state =
                        ACQUIRE_STATE;

            end


            // =================================================
            // COARSE FREQUENCY ACQUISITION
            // =================================================

            ACQUIRE_STATE: begin

                if (!start)

                    next_state =
                        IDLE_STATE;


                else if (freq_locked)

                    next_state =
                        TRACK_STATE;

            end


            // =================================================
            // FINE PHASE TRACKING
            // =================================================

            TRACK_STATE: begin

                if (!start)

                    next_state =
                        IDLE_STATE;


                else if (locked)

                    next_state =
                        LOCKED_STATE;


                // If phase becomes very large again,
                // return to coarse frequency acquisition.

                else if (error_valid &&
                         (abs_error >
                          ACQUIRE_RETURN_THRESHOLD))

                    next_state =
                        REACQUIRE_STATE;

            end


            // =================================================
            // LOCKED
            // =================================================

            LOCKED_STATE: begin

                if (!start)

                    next_state =
                        IDLE_STATE;


                else if (!locked)

                    next_state =
                        REACQUIRE_STATE;

            end


            // =================================================
            // COARSE REACQUISITION
            // =================================================

            REACQUIRE_STATE: begin

                if (!start)

                    next_state =
                        IDLE_STATE;


                else if (freq_locked)

                    next_state =
                        TRACK_STATE;

            end


            default: begin

                next_state =
                    RESET_STATE;

            end

        endcase

    end


    // =========================================================
    // CONTROL OUTPUTS
    // =========================================================

    always @(*) begin

        loop_enable =
            1'b0;

        freq_acquire_enable =
            1'b0;

        kp =
            8'd0;

        ki =
            8'd0;


        case (state)


            // ---------------------------------------------
            // Coarse frequency loop only
            // ---------------------------------------------

            ACQUIRE_STATE: begin

                freq_acquire_enable =
                    1'b1;

            end


            // ---------------------------------------------
            // Fine phase PI
            //
            // Q4.4:
            //
            // kp = 4 -> 0.25
            // ki = 1 -> 0.0625
            // ---------------------------------------------

            TRACK_STATE: begin

                loop_enable =
                    1'b1;

                kp =
                    8'd4;

                ki =
                    8'd1;

            end


            LOCKED_STATE: begin

                loop_enable =
                    1'b1;

                kp =
                    8'd4;

                ki =
                    8'd1;

            end


            // ---------------------------------------------
            // Coarse frequency loop again
            // ---------------------------------------------

            REACQUIRE_STATE: begin

                freq_acquire_enable =
                    1'b1;

            end


            default: begin

                loop_enable =
                    1'b0;

                freq_acquire_enable =
                    1'b0;

            end

        endcase

    end


    // =========================================================
    // STATE REGISTER
    // =========================================================

    always @(posedge tdc_clk or negedge reset_n) begin

        if (!reset_n)

            state <=
                RESET_STATE;


        else

            state <=
                next_state;

    end


endmodule
