`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2026 21:28:20
// Design Name: 
// Module Name: wallace_2bit
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module wallace_2bit (
    input  [1:0] A,
    input  [1:0] B,
    output [3:0] P
);

    wire p0, p1, p2, p3;
    wire sum, carry;

    // Partial Product Generation
    assign p0 = A[0] & B[0];
    assign p1 = A[1] & B[0];
    assign p2 = A[0] & B[1];
    assign p3 = A[1] & B[1];

    // Wallace Reduction (Half Adder)
    assign sum   = p1 ^ p2;
    assign carry = p1 & p2;

    // Final Product
    assign P[0] = p0;
    assign P[1] = sum;
    assign P[2] = carry ^ p3;
    assign P[3] = carry & p3;

endmodule
