`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/20/2026 09:48:44 PM
// Design Name: 
// Module Name: mux_4to1
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


module mux_4to1(
    input wire [3:0] a,
    input wire [3:0] b,
    input wire [3:0] c,
    input wire [3:0] d,
    input wire [1:0] sel,
    output wire [3:0] out
    );
    
    assign out = sel[1] ? (sel[0] ? d : c) : (sel[0] ? b : a);
    
endmodule
