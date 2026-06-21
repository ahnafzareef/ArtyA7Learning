`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/21/2026 10:15:56 AM
// Design Name: 
// Module Name: jkFF
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


module jkFF(
    input j,
    input k, 
    input rstn,
    input clk,
    output reg q
    );
    
    //happens on clk edge
    always @(posedge clk) begin
        if (!rstn) begin
            q <= 0;
        end else begin
            //JKFF logic
            q <= (j & ~q) | (~k & q);
        end
    end
endmodule
