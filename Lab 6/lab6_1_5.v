`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/08/2022
// Design Name: 
// Module Name: lab6_1_55
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


module lab6_1_5(
    input clk, 
    input ShiftEn, 
    input ShiftIn, 
    output ShiftOut, 
    output [3:0] ParallelOut
    );
    
    reg [3:0] shift_reg; 
    
    always @(posedge clk)
        if (ShiftEn) 
            shift_reg <= {shift_reg[2:0], ShiftIn}; 
        assign ShiftOut = shift_reg[3]; 
        assign ParallelOut = shift_reg; 
    
endmodule
