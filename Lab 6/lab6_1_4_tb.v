`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/08/2022
// Design Name: 
// Module Name: lab6_1_4_tb
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


module lab6_1_44_tb(
    );
    reg clk;
    reg ShiftIn; 
    reg [3:0] ParallelIn; 
    reg load; 
    reg ShiftEn;
    wire ShiftOut; 
    wire [3:0] RegContent;
    lab6_1_44 DUT(.clk(clk),.ShiftIn(ShiftIn),.ParallelIn(ParallelIn),.load(load),.ShiftEn(ShiftEn),.ShiftOut(ShiftOut),.RegContent(RegContent));
    
    initial 
    begin
         clk = 1'b0;
         load = 1'b0;
         #60
         load = 1'b1;
         #20
         load = 1'b0;
         #120
         load = 1'b1;
         #20
         load = 1'b0;
         #55
         load = 1'b1;
         #20
         load = 1'b0;
         #65
         load = 1'b1;
         #20
         load = 1'b0;
    end
    initial 
    begin
         ShiftIn = 1'b1;
    end
    initial 
    begin
         ParallelIn = 0;
         #20
         ParallelIn = 4'b0101;
         #160
         ParallelIn = 4'b1001;
    end
    initial 
    begin
         ShiftEn = 1'b0;
         #100
         ShiftEn = 1'b1;
         #220
         ShiftEn = 1'b0;
    end
       
    always #10 clk = ~clk;
endmodule
