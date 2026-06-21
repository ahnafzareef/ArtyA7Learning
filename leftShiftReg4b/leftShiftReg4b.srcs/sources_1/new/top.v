`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/21/2026 11:57:27 AM
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
    input wire [0:0] sw,
    input wire [0:0] btn,
    
    output wire [3:0] led,
    input wire CLK100MHZ
 
    );
    
    reg [25:0] cnt = 0;
    
    always @(posedge CLK100MHZ) begin
        cnt <= cnt + 1;
    end
    
    wire slow_clk = cnt[25];
    lshift4b shift0 (.d(sw[0]), .clk(slow_clk), .rstn(~btn[0]), .out(led[3:0])); 
    
    
endmodule
