`timescale 1ns/1ps

module feedback_divider_tb;

    reg vco_clk;
    reg reset_n;
    reg enable;

    reg [7:0] divide_value;

    wire feedback_clk;


    feedback_divider dut (
        .vco_clk      (vco_clk),
        .reset_n      (reset_n),
        .enable       (enable),
        .divide_value (divide_value),
        .feedback_clk (feedback_clk)
    );


    // 100 MHz input clock
    //
    // Period = 10 ns

    initial begin

        vco_clk = 1'b0;

        forever #5
            vco_clk = ~vco_clk;

    end


    initial begin

        $dumpfile("waveforms/feedback_divider.vcd");
        $dumpvars(0, feedback_divider_tb);

        reset_n      = 1'b0;
        enable       = 1'b0;
        divide_value = 8'd4;

        #20;

        reset_n = 1'b1;
        enable  = 1'b1;


        // -----------------------------------------
        // TEST 1: Divide by 4
        //
        // Input = 100 MHz
        //
        // Expected output = 25 MHz
        // output period = 40 ns
        // -----------------------------------------

        #200;


        // -----------------------------------------
        // TEST 2: Divide by 8
        //
        // Expected output = 12.5 MHz
        // output period = 80 ns
        // -----------------------------------------

        divide_value = 8'd8;

        #320;


        // -----------------------------------------
        // TEST 3: Disable
        //
        // feedback_clk should go LOW
        // -----------------------------------------

        enable = 1'b0;

        #50;


        // -----------------------------------------
        // TEST 4: Re-enable divide by 4
        // -----------------------------------------

        divide_value = 8'd4;
        enable       = 1'b1;

        #160;


        // -----------------------------------------
        // TEST 5: Invalid divide value
        // -----------------------------------------

        divide_value = 8'd0;

        #50;


        $finish;

    end

endmodule
