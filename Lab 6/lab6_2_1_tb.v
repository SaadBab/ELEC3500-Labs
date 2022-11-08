`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/08/2022
// Design Name: 
// Module Name: lab6_2_1_tb
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


module lab6_2_11_tb(
    ); 
    
    reg clk;
    reg clear_n;
    reg Enable;
    wire [7:0] Q;
    
    lab6_2_1final DUT(.clk(clk),.clear_n(clear_n),.Enable(Enable),.Q(Q));
    
    initial 
    begin
        clk = 1'b0;
        Enable = 1'b0;
        #20;
        Enable = 1'b1;
        #100;
        Enable = 1'b0;
        #80;
        Enable = 1'b1;
    end
    
    initial 
    begin
        clear_n = 1'b0;
       #40;
     clear_n = 1'b1;
    end
    
    always #5 clk = ~clk;
    
endmodule
