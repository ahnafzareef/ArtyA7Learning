`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/18/2026 10:00:34 PM
// Design Name: 
// Module Name: blinky
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


module blinky(
    input CLK100MHZ,
    output led0_r
    );
    
    reg [24:0] count = 0;
 
    assign led0_r = count[24];
     
    always @ (posedge(CLK100MHZ)) count <= count + 1;
endmodule
