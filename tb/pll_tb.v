`timescale 1ns/1ps

module pll_tb;


    // =========================================================
    // TESTBENCH INPUTS
    // =========================================================

    reg ref_clk;

    // 200 MHz
    reg tdc_clk;

    // 50 MHz
    reg ctrl_clk;

    reg reset_n;
    reg start;

    reg [7:0] divide_value;


    // =========================================================
    // VARIABLE REFERENCE PERIOD
    // =========================================================

    real ref_half_period;


    // =========================================================
    // DUT OUTPUTS
    // =========================================================

    wire vco_clk;

    wire feedback_clk;

    wire [9:0] tuning_word;

    wire locked;

    wire UP;
    wire DOWN;

    wire signed [7:0] phase_error;

    wire error_valid;

    wire sat_high;
    wire sat_low;

    wire [2:0] controller_state;

    wire signed [7:0] kp_debug;
    wire signed [7:0] ki_debug;

    wire loop_enable;


    // =========================================================
    // TEST VARIABLES
    // =========================================================

    integer timeout_count;
    integer stable_count;


    real initial_lock_start_time;
    real initial_lock_confirm_time;

    real lock_loss_time;

    real reacquire_start_time;
    real reacquire_confirm_time;


    // =========================================================
    // TEST PARAMETERS
    // =========================================================
    //
    // ctrl_clk = 50 MHz
    //
    // period = 20 ns
    //
    // 1000 control cycles =
    //
    //     1000 * 20 ns
    //     = 20 us
    //
    // This corresponds to approximately:
    //
    //     200 reference cycles at 10 MHz
    //
    // and:
    //
    //     220 reference cycles at 11 MHz
    //
    // LOCK must remain continuously asserted throughout
    // this entire interval before PASS is declared.
    // =========================================================

    parameter integer STABLE_CTRL_CYCLES =
        1000;


    // 15000 control cycles =
    //
    // 300 us maximum waiting time.

    parameter integer LOCK_TIMEOUT_CYCLES =
        15000;


    // 5000 control cycles =
    //
    // 100 us maximum allowed time to detect lock loss.

    parameter integer LOSS_TIMEOUT_CYCLES =
        5000;


    // =========================================================
    // DUT
    // =========================================================

    pll_sim_top dut (

        .ref_clk          (ref_clk),

        .tdc_clk          (tdc_clk),

        .ctrl_clk         (ctrl_clk),

        .reset_n          (reset_n),

        .start            (start),

        .divide_value     (divide_value),

        .vco_clk          (vco_clk),

        .feedback_clk     (feedback_clk),

        .tuning_word      (tuning_word),

        .locked           (locked),

        .UP               (UP),

        .DOWN             (DOWN),

        .phase_error      (phase_error),

        .error_valid      (error_valid),

        .sat_high         (sat_high),

        .sat_low          (sat_low),

        .controller_state (controller_state),

        .kp_debug         (kp_debug),

        .ki_debug         (ki_debug),

        .loop_enable      (loop_enable)

    );


    // =========================================================
    // REFERENCE CLOCK
    // =========================================================

    initial begin

        ref_clk = 1'b0;

        ref_half_period = 50.0;


        forever begin

            #(ref_half_period);

            ref_clk =
                ~ref_clk;

        end

    end


    // =========================================================
    // 200 MHz TDC CLOCK
    // =========================================================

    initial begin

        tdc_clk = 1'b0;


        forever #2.5

            tdc_clk =
                ~tdc_clk;

    end


    // =========================================================
    // 50 MHz CONTROL CLOCK
    // =========================================================

    initial begin

        ctrl_clk = 1'b0;


        forever #10.0

            ctrl_clk =
                ~ctrl_clk;

    end


    // =========================================================
    // MAIN TEST
    // =========================================================

    initial begin


        // -----------------------------------------------------
        // WAVEFORM
        // -----------------------------------------------------

        $dumpfile(
            "waveforms/pll_full.vcd"
        );

        $dumpvars(
            0,
            pll_tb
        );


        // -----------------------------------------------------
        // INITIAL CONDITIONS
        // -----------------------------------------------------

        reset_n =
            1'b0;

        start =
            1'b0;

        divide_value =
            8'd4;


        #100;


        reset_n =
            1'b1;


        #100;


        start =
            1'b1;


        $display("");
        $display(
            "============================================"
        );

        $display(
            "PLL STARTED"
        );

        $display(
            "Reference clock = 10 MHz"
        );

        $display(
            "TDC clock       = 200 MHz"
        );

        $display(
            "Control clock   = 50 MHz"
        );

        $display(
            "Divider         = 4"
        );

        $display(
            "Initial VCO target approximately 40 MHz"
        );

        $display(
            "Stable-lock requirement = %0d ctrl cycles = %0.2f us",
            STABLE_CTRL_CYCLES,
            STABLE_CTRL_CYCLES * 0.020
        );

        $display(
            "============================================"
        );

        $display("");


        // =====================================================
        // TEST 1:
        // REQUIRE SUSTAINED INITIAL LOCK
        // =====================================================
        //
        // We do NOT pass merely because locked becomes 1.
        //
        // We need:
        //
        // locked = 1
        // AND
        // FSM = LOCKED_STATE (state 4)
        //
        // for STABLE_CTRL_CYCLES consecutive control clocks.
        //
        // If lock disappears:
        //
        // stable_count returns to zero.
        //
        // Therefore temporary zero-crossing false locks
        // cannot pass this test.
        // =====================================================

        timeout_count = 0;

        stable_count = 0;

        initial_lock_start_time = 0.0;


        while (
            (stable_count < STABLE_CTRL_CYCLES)
            &&
            (timeout_count < LOCK_TIMEOUT_CYCLES)
        ) begin


            @(posedge ctrl_clk);

            // Allow nonblocking assignments in control-domain
            // RTL to update before checking their outputs.

            #1;


            timeout_count =
                timeout_count + 1;


            if (
                (locked === 1'b1)
                &&
                (controller_state == 3'd4)
            ) begin


                // Beginning of a new candidate
                // continuous-lock interval.

                if (stable_count == 0)

                    initial_lock_start_time =
                        $realtime;


                stable_count =
                    stable_count + 1;

            end


            else begin

                // Any lock loss invalidates the previous
                // candidate interval.

                stable_count =
                    0;

            end

        end


        // =====================================================
        // INITIAL LOCK RESULT
        // =====================================================

        if (
            stable_count >= STABLE_CTRL_CYCLES
        ) begin


            initial_lock_confirm_time =
                $realtime;


            $display("");

            $display(
                "============================================"
            );

            $display(
                "PASS: INITIAL SUSTAINED PLL LOCK"
            );

            $display(
                "Stable lock began at    = %0.2f ns",
                initial_lock_start_time
            );

            $display(
                "Stable lock confirmed at= %0.2f ns",
                initial_lock_confirm_time
            );

            $display(
                "Continuous lock window  = %0d ctrl cycles",
                STABLE_CTRL_CYCLES
            );

            $display(
                "Tuning word             = %0d",
                tuning_word
            );

            $display(
                "Phase error             = %0d",
                phase_error
            );

            $display(
                "FSM state               = %0d",
                controller_state
            );

            $display(
                "============================================"
            );

            $display("");

        end


        else begin


            $display("");

            $display(
                "============================================"
            );

            $display(
                "FAIL: INITIAL PLL NEVER ACHIEVED SUSTAINED LOCK"
            );

            $display(
                "Longest/latest stable count = %0d / %0d",
                stable_count,
                STABLE_CTRL_CYCLES
            );

            $display(
                "Tuning word = %0d",
                tuning_word
            );

            $display(
                "Phase error = %0d",
                phase_error
            );

            $display(
                "FSM state   = %0d",
                controller_state
            );

            $display(
                "============================================"
            );

            $display("");


            $finish;

        end


        // =====================================================
        // TEST 2:
        // APPLY FREQUENCY STEP
        // =====================================================
        //
        // Important:
        //
        // The frequency disturbance is now applied ONLY AFTER
        // sustained initial lock has been proven.
        // =====================================================

        $display("");

        $display(
            "============================================"
        );

        $display(
            "APPLYING REFERENCE FREQUENCY STEP"
        );

        $display(
            "10 MHz -> approximately 11 MHz"
        );

        $display(
            "New VCO target approximately 44 MHz"
        );

        $display(
            "Step applied at %0.2f ns",
            $realtime
        );

        $display(
            "============================================"
        );

        $display("");


        ref_half_period =
            45.4545;


        // =====================================================
        // WAIT FOR LOCK LOSS
        // =====================================================

        timeout_count =
            0;


        while (
            (locked === 1'b1)
            &&
            (timeout_count < LOSS_TIMEOUT_CYCLES)
        ) begin


            @(posedge ctrl_clk);

            #1;


            timeout_count =
                timeout_count + 1;

        end


        if (locked === 1'b0) begin


            lock_loss_time =
                $realtime;


            $display(
                "Lock loss detected at time %0.2f ns",
                lock_loss_time
            );

        end


        else begin


            $display("");

            $display(
                "============================================"
            );

            $display(
                "FAIL: REFERENCE STEP DID NOT PRODUCE EXPECTED LOCK LOSS"
            );

            $display(
                "Tuning word = %0d",
                tuning_word
            );

            $display(
                "Phase error = %0d",
                phase_error
            );

            $display(
                "FSM state   = %0d",
                controller_state
            );

            $display(
                "============================================"
            );

            $display("");


            $finish;

        end


        // =====================================================
        // TEST 3:
        // REQUIRE SUSTAINED REACQUISITION
        // =====================================================

        timeout_count =
            0;

        stable_count =
            0;

        reacquire_start_time =
            0.0;


        while (
            (stable_count < STABLE_CTRL_CYCLES)
            &&
            (timeout_count < LOCK_TIMEOUT_CYCLES)
        ) begin


            @(posedge ctrl_clk);

            #1;


            timeout_count =
                timeout_count + 1;


            if (
                (locked === 1'b1)
                &&
                (controller_state == 3'd4)
            ) begin


                if (stable_count == 0)

                    reacquire_start_time =
                        $realtime;


                stable_count =
                    stable_count + 1;

            end


            else begin

                stable_count =
                    0;

            end

        end


        // =====================================================
        // REACQUISITION RESULT
        // =====================================================

        if (
            stable_count >= STABLE_CTRL_CYCLES
        ) begin


            reacquire_confirm_time =
                $realtime;


            $display("");

            $display(
                "============================================"
            );

            $display(
                "PASS: PLL SUSTAINED REACQUISITION"
            );

            $display(
                "Stable reacquisition began at     = %0.2f ns",
                reacquire_start_time
            );

            $display(
                "Stable reacquisition confirmed at = %0.2f ns",
                reacquire_confirm_time
            );

            $display(
                "Continuous lock window            = %0d ctrl cycles",
                STABLE_CTRL_CYCLES
            );

            $display(
                "Tuning word                       = %0d",
                tuning_word
            );

            $display(
                "Phase error                       = %0d",
                phase_error
            );

            $display(
                "FSM state                         = %0d",
                controller_state
            );

            $display(
                "============================================"
            );

            $display("");

        end


        else begin


            $display("");

            $display(
                "============================================"
            );

            $display(
                "FAIL: PLL NEVER ACHIEVED SUSTAINED REACQUISITION"
            );

            $display(
                "Latest stable count = %0d / %0d",
                stable_count,
                STABLE_CTRL_CYCLES
            );

            $display(
                "Tuning word = %0d",
                tuning_word
            );

            $display(
                "Phase error = %0d",
                phase_error
            );

            $display(
                "FSM state   = %0d",
                controller_state
            );

            $display(
                "============================================"
            );

            $display("");


            $finish;

        end


        // =====================================================
        // SUCCESS
        // =====================================================

        $display("");

        $display(
            "============================================"
        );

        $display(
            "FULL PLL SUSTAINED-LOCK TEST PASSED"
        );

        $display(
            "============================================"
        );

        $display("");


        $finish;

    end


    // =========================================================
    // CONTROL-DOMAIN DEBUG
    // =========================================================

    always @(posedge ctrl_clk) begin

        if (error_valid) begin

            $display(
                "time=%0t state=%0d error=%0d tuning=%0d kp=%0d ki=%0d locked=%b",
                $time,
                controller_state,
                phase_error,
                tuning_word,
                kp_debug,
                ki_debug,
                locked
            );

        end

    end


endmodule
