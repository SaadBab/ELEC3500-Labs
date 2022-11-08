`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/06/2021 04:28:47 PM
// Design Name: 
// Module Name: lab6_2_33
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


module lab6_2_3(
    input Clear,
    input clk,
    input Enable,
    input Load,
    output [3:0]Q
    );
    
    reg [3:0] count;
    wire cnt_done;
    
    assign cnt_done = ~| count;
    assign Q = count;
    
    always @(posedge clk)
        if (Clear)
            count <= 0;
        else if (Enable)
        if (Load | cnt_done)
            count <= 4'b1010; // decimal 10
        else
            count <= count - 1;
endmodule
