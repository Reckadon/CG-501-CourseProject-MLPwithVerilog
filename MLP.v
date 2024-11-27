`timescale 1ns / 1ps

// Engineer: Romit Mohane
// Module Name: MLP
// Project Name: MLP using Verilog

module MLP (
    input signed [9:0] x1,   // Input feature 1
    input signed [9:0] x2,   // Input feature 2
    output wire y                  // Final output (0 or 1)
);
    // intermediate outputs (hidden layer)
    wire h1, h2;

    reg signed [9:0] w1_h1, w2_h1, bias_h1;  // neuron 1
    reg signed [9:0] w1_h2, w2_h2, bias_h2;  // neuron 2
    reg signed [9:0] w_h1_out, w_h2_out, bias_out; // output layer

    // initializing hidden layer perceptrons
    perceptron p1 (
        .x1(x1),
        .x2(x2),
        .w1(w1_h1),
        .w2(w2_h1),
        .bias(bias_h1),
        .y(h1)
    );

    perceptron p2 (
        .x1(x1),
        .x2(x2),
        .w1(w1_h2),
        .w2(w2_h2),
        .bias(bias_h2),
        .y(h2)
    );

    // Output layer perceptron
    perceptron p_out (
        .x1(h1),
        .x2(h2),
        .w1(w_h1_out),
        .w2(w_h2_out),
        .bias(bias_out),
        .y(y)
    );

    // Initialize weights and biases
    initial begin
        // Hidden layer weights and biases
        w1_h1 = 2; w2_h1 = -1; bias_h1 = -3;  // Neuron 1
        w1_h2 = -1; w2_h2 = 2; bias_h2 = 1;   // Neuron 2

        // Output layer weights and bias
        w_h1_out = -2; w_h2_out = 3; bias_out = 0;
    end
endmodule
