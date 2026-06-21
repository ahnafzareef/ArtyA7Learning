`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/20/2026 08:04:28 PM
// Design Name: 
// Module Name: top
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


module top(
    input [3:0] sw, //A, B
    input [3:0] btn, //C_IN
    output [3:0] led
    );
    
    fullAdder fa0 (.a(sw[3:2]), .b(sw[1:0]), .c_in(btn[0]), .sum(led[1:0]), .c_out(led[2]));
    
    
endmodule
