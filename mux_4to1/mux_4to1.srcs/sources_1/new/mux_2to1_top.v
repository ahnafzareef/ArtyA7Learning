`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/20/2026 10:11:37 PM
// Design Name: 
// Module Name: mux_2to1_top
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


module mux_2to1_top(
    
    input wire [3:0] sw,
    input wire [0:0] btn,
    
    output wire [3:0] led
    );
    
    mux_2to1 ma0 (.a(sw[3:2]), .b(sw[1:0]), .sel(btn[0]), .out(led[1:0]));
    
    
endmodule
