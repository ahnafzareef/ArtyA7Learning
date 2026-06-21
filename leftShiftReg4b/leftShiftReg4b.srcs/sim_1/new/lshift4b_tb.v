`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/21/2026 11:45:11 AM
// Design Name: 
// Module Name: lshift4b_tb
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


module lshift4b_tb;
    reg d;
    reg clk;
    reg rstn;
    
    wire [3:0] out;
    integer i;
    
    lshift4b shift0 (.d(d), .clk(clk), .rstn(rstn), .out(out));
    
    always #10 clk = ~clk;
    
    initial begin 
    {clk, rstn, d} <= 0;
    
    #10 rstn <= 1;
    
    for (i = 0; i < 20; i = i+1) begin
        @(posedge clk) d <= $random;
    end
    
    #10 $finish;
    end
    
    
     initial begin
     $monitor("Time=%0t | d=%b out=%b", $time, d, out);
     end
     
     
endmodule
