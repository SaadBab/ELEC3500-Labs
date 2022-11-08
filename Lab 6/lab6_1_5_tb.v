`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/06/2022
// Design Name: 
// Module Name: lab6_1_5_tb
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


module lab6_1_55_tb(
    );
    reg clk;
    reg ShiftIn; 
    reg ShiftEn;
    wire [3:0] ParallelOut;
    wire ShiftOut; 
    lab6_1_55 DUT(.clk(clk),.ShiftIn(ShiftIn),.ShiftEn(ShiftEn),.ShiftOut(ShiftOut),.ParallelOut(ParallelOut));
        
    initial begin
        clk = 1'b0;
    end
    initial 
    begin
        ShiftEn = 1'b0;
        #40;
        ShiftEn = 1'b1;
        #40;
        ShiftEn = 1'b0;
        #40;
        ShiftEn = 1'b1;
        #40;
        ShiftEn = 1'b0;
        #80;
        ShiftEn = 1'b1;
        #40;
        ShiftEn = 1'b0;
        #40;
        ShiftEn = 1'b1;
        #40;
        ShiftEn = 1'b0;
    end
    initial 
    begin
        ShiftIn = 1'b1;
        #200;
        ShiftIn = 1'b0;
    end
    always #10 clk = ~clk;
    
endmodule
