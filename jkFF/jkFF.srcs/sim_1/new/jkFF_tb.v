`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/21/2026 10:31:46 AM
// Design Name: 
// Module Name: jkFF_tb
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


module jkFF_tb;

    reg j;
    reg k;
    reg clk;
    reg rstn;
    
    wire q;
    integer i;
    
    reg [2:0] delay;
    
    
     
    jkFF ff0 (.j(j), .k(k), .clk(clk), .rstn(rstn), .q(q));
    
    always #10 clk = ~clk;
    
    initial begin
        {j,k,rstn,clk} <= 0;
        
        //start 
        #10 rstn <= 1;
        
        //10 sims
        for (i = 0; i < 10; i = i +1) begin
            delay = ($random % 7) + 1;
            #(delay) j <= $random;
            #(delay) k <= $random;
        end
        
        #20 $finish;
    end
    
    initial begin
        $monitor("Time = %0t | rstn= %b j = %b k = %b q = %b", $time, rstn, j,k,q);
    end
    
    //analyze waveform
    initial begin
    $dumpfile("jkFF.vcd");
    $dumpvars(0, jkFF_tb);
    end
endmodule
