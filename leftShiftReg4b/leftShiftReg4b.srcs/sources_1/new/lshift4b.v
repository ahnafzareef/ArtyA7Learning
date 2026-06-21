`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/21/2026 11:39:42 AM
// Design Name: 
// Module Name: lshift4b
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


module lshift4b(
    input wire d,
    input wire clk,
    input rstn,
    
    output reg [3:0] out
    );
    
    
    always @(posedge clk) begin
    
        if (!rstn) 
            out <= 0;
        else begin
            out <= {out[2:0], d}; //ex: 0110 and d= 1, delete 0, make 110 and add 1, so 1101   
        end
    end
endmodule
