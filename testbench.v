`timescale 1ns / 1ps

// Engineer: Romit Mohane
// Module Name: testbench
// Project Name: MLP using Verilog

module testbench();
    reg signed [9:0] x1, x2; 
    reg signed [9:0] w1, w2, bias;

    // Output
    wire y;

    // Instantiate the perceptron module
    perceptron uut (
        .x1(x1),
        .x2(x2),
        .w1(w1),
        .w2(w2),
        .bias(bias),
        .y(y)
    );

    // Test procedure
    initial begin
        // Test case 1
        x1 = 0; x2 = 0;
        #10 $display("x1=%d, x2=%d", x1, x2);

        // Test case 2
        x1 = 1; x2 = 0; 
        #10 $display("x1=%d, x2=%d", x1, x2);

        // Test case 3
        x1 = 0; x2 = 1;
        #10 $display("x1=%d, x2=%d", x1, x2);

        // Test case 4
        x1 = 1; x2 = 1;
        #10 $display("x1=%d, x2=%d, w1=%d, w2=%d, bias=%d => y=%b", x1, x2, w1, w2, bias, y);

        $finish;
    end
endmodule
