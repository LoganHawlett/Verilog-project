`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2026 21:29:37
// Design Name: 
// Module Name: wallace_2bit_TB
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


module wallace_2bit_TB;

    reg  [1:0] A;
    reg  [1:0] B;
    wire [3:0] P;

    // DUT Instantiation
    wallace_2bit uut (
        .A(A),
        .B(B),
        .P(P)
                             );

    initial begin

        $display("A  B  Product");
        $monitor("%b %b  %b", A, B, P);

        // Apply all possible combinations
        A = 2'b00; B = 2'b00; #10;
        A = 2'b00; B = 2'b01; #10;
        A = 2'b00; B = 2'b10; #10;
        A = 2'b00; B = 2'b11; #10;

        A = 2'b01; B = 2'b00; #10;
        A = 2'b01; B = 2'b01; #10;
        A = 2'b01; B = 2'b10; #10;
        A = 2'b01; B = 2'b11; #10;

        A = 2'b10; B = 2'b00; #10;
        A = 2'b10; B = 2'b01; #10;
        A = 2'b10; B = 2'b10; #10;
        A = 2'b10; B = 2'b11; #10;

        A = 2'b11; B = 2'b00; #10;
        A = 2'b11; B = 2'b01; #10;
        A = 2'b11; B = 2'b10; #10;
        A = 2'b11; B = 2'b11; #10;

        $finish;
    end

endmodule