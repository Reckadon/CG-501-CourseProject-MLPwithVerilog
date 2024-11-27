`timescale 1ns / 1ps

// Engineer: Romit Mohane
// Module Name: testbench_MLP
// Project Name: MLP using Verilog

module testbench_MLP();

    // Inputs
    reg signed [9:0] x1, x2;

    // Output
    wire y;

    // Instantiate the MLP module
    MLP uut (
        .x1(x1),
        .x2(x2),
        .y(y)
    );

    initial begin
        // Test case 1
        x1 = 5; x2 = -3;
        #10 $display("x1=%d, x2=%d => y=%b", x1, x2, y);

        // Test case 2
        x1 = -2; x2 = 4;
        #10 $display("x1=%d, x2=%d => y=%b", x1, x2, y);

        // Test case 3
        x1 = 0; x2 = 0;
        #10 $display("x1=%d, x2=%d => y=%b", x1, x2, y);

        // Test case 4
        x1 = 7; x2 = -1;
        #10 $display("x1=%d, x2=%d => y=%b", x1, x2, y);

        $finish;
    end
endmodule

