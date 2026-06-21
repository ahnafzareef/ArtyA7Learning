`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/19/2026 05:39:49 PM
// Design Name: 
// Module Name: fullAdder
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


module fullAdder(
    input [1:0] a, 
    input [1:0] b,
    input c_in,
    output reg c_out,
    output reg [1:0] sum
    );
    
    always @(*) begin
    {c_out, sum} = a + b + c_in;
   end
       
endmodule
