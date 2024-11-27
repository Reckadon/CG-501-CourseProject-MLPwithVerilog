`timescale 1ns / 1ps

// Engineer: Romit Mohane
// Module Name: perceptron
// Project Name: MLP using Verilog

module perceptron (
    input signed [9:0] x1, 
    input signed [9:0] x2, 
    input signed [9:0] w1,  
    input signed [9:0] w2,  
    input signed [9:0] bias, 
    output reg y 
);
    // register for weighted sum
    reg signed [9:0] weighted_sum;

    always @(*) begin
        // (x1 * w1 + x2 * w2 + bias)
        weighted_sum = (x1 * w1) + (x2 * w2) + bias;

        // unit step activation function
        if (weighted_sum >= 0)
            y = 1;  // 1 for non-negative sum
        else
            y = 0;  // 0 for negative sum
    end
endmodule
