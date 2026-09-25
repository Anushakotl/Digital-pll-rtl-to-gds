`timescale 1ns/1ps

module pll_controller #(

    parameter [8:0] TRACK_THRESHOLD          = 9'd4,
    parameter [8:0] ACQUIRE_RETURN_THRESHOLD = 9'd12,
    parameter [7:0] TRACK_COUNT_REQUIRED     = 8'd4

)(
    input  wire                    tdc_clk,
    input  wire                    reset_n,
    input  wire                    start,

    input  wire [7:0]       phase_error,
    input  wire                    error_valid,
    input  wire                    locked,

    output reg                     loop_enable,
    output reg [7:0]        kp,
    output reg [7:0]        ki,

    output reg [2:0]               state
);


    // =========================================================
    // FSM STATES
    // =========================================================

    localparam [2:0] RESET_STATE     = 3'd0;
    localparam [2:0] IDLE_STATE      = 3'd1;
    localparam [2:0] ACQUIRE_STATE   = 3'd2;
    localparam [2:0] TRACK_STATE     = 3'd3;
    localparam [2:0] LOCKED_STATE    = 3'd4;
    localparam [2:0] REACQUIRE_STATE = 3'd5;


    reg [2:0] next_state;

    reg [7:0] track_count;
    reg [7:0] next_track_count;
    wire signed [7:0] phase_error_s;

    assign phase_error_s = $signed(phase_error);

    // =========================================================
    // ABSOLUTE PHASE ERROR
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
    // NEXT-STATE LOGIC
    // =========================================================

    always @(*) begin

        next_state       = state;
        next_track_count = track_count;


        case (state)


            // -------------------------------------------------
            // RESET
            // -------------------------------------------------

            RESET_STATE: begin

                next_track_count = 8'd0;
                next_state       = IDLE_STATE;

            end


            // -------------------------------------------------
            // IDLE
            // -------------------------------------------------

            IDLE_STATE: begin

                next_track_count = 8'd0;

                if (start)
                    next_state = ACQUIRE_STATE;

            end


            // -------------------------------------------------
            // ACQUIRE
            //
            // Large PI gains are used in this state.
            //
            // We require several small phase-error samples
            // before moving to TRACK.
            // -------------------------------------------------

            ACQUIRE_STATE: begin

                if (!start) begin

                    next_state       = IDLE_STATE;
                    next_track_count = 8'd0;

                end

                else if (error_valid) begin

                    if (abs_error <= TRACK_THRESHOLD) begin

                        if (track_count >=
                            (TRACK_COUNT_REQUIRED - 8'd1)) begin

                            next_state       = TRACK_STATE;
                            next_track_count = 8'd0;

                        end

                        else begin

                            next_track_count =
                                track_count + 8'd1;

                        end

                    end

                    else begin

                        next_track_count = 8'd0;

                    end

                end

            end


            // -------------------------------------------------
            // TRACK
            //
            // Reduced gains for fine convergence.
            // -------------------------------------------------

            TRACK_STATE: begin

                next_track_count = 8'd0;

                if (!start)
                    next_state = IDLE_STATE;

                else if (locked)
                    next_state = LOCKED_STATE;

                else if (error_valid &&
                         (abs_error >
                          ACQUIRE_RETURN_THRESHOLD))
                    next_state = ACQUIRE_STATE;

            end


            // -------------------------------------------------
            // LOCKED
            // -------------------------------------------------

            LOCKED_STATE: begin

                next_track_count = 8'd0;

                if (!start)
                    next_state = IDLE_STATE;

                else if (!locked)
                    next_state = REACQUIRE_STATE;

            end


            // -------------------------------------------------
            // REACQUIRE
            //
            // PLL previously had lock but lost it.
            //
            // Use stronger gains again.
            // -------------------------------------------------

            REACQUIRE_STATE: begin

                if (!start) begin

                    next_state       = IDLE_STATE;
                    next_track_count = 8'd0;

                end

                else if (error_valid) begin

                    if (abs_error <= TRACK_THRESHOLD) begin

                        if (track_count >=
                            (TRACK_COUNT_REQUIRED - 8'd1)) begin

                            next_state       = TRACK_STATE;
                            next_track_count = 8'd0;

                        end

                        else begin

                            next_track_count =
                                track_count + 8'd1;

                        end

                    end

                    else begin

                        next_track_count = 8'd0;

                    end

                end

            end


            default: begin

                next_state       = RESET_STATE;
                next_track_count = 8'd0;

            end

        endcase

    end


    // =========================================================
    // GAIN SCHEDULING / OUTPUT LOGIC
    // =========================================================
    //
    // kp and ki use Q4.4 representation.
    //
    // 16 = 1.0
    // 8  = 0.5
    // 4  = 0.25
    // 24 = 1.5
    //
    // =========================================================

    always @(*) begin

        loop_enable = 1'b0;

        kp = 8'sd0;
        ki = 8'sd0;


        case (state)

            ACQUIRE_STATE: begin

                loop_enable = 1'b1;

                kp = 8'sd16;     // 1.0
                ki = 8'sd2;      // 0.125

            end


            TRACK_STATE: begin

                loop_enable = 1'b1;

                kp = 8'sd8;      // 0.5
                ki = 8'sd1;      // 0.0625

            end


            LOCKED_STATE: begin

                loop_enable = 1'b1;

                kp = 8'sd8;      // 0.25
                ki = 8'sd1;      // 0.0625

            end


            REACQUIRE_STATE: begin

                loop_enable = 1'b1;

                kp = 8'sd24;     // 1.5
                ki = 8'sd2;      // 0.125

            end


            default: begin

                loop_enable = 1'b0;

                kp = 8'sd0;
                ki = 8'sd0;

            end

        endcase

    end


    // =========================================================
    // STATE REGISTERS
    // =========================================================

    always @(posedge tdc_clk or negedge reset_n) begin

        if (!reset_n) begin

            state       <= RESET_STATE;
            track_count <= 8'd0;

        end

        else begin

            state       <= next_state;
            track_count <= next_track_count;

        end

    end


endmodule
