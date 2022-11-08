module lab6_1_33_tb(
    );
    reg clk;
    reg ShiftIn;
    wire ShiftOut;
    
    lab6_1_33 DUT(.clk(clk), .ShiftIn(ShiftIn), .ShiftOut(ShiftOut));
    
    initial
    begin
        clk = 1'b0;
        ShiftIn = 0;
        #20 ShiftIn = 1;
        #40 ShiftIn = 0;
        #20 ShiftIn = 1;
        #40 ShiftIn = 0;
    end
    
    always #10 clk = ~clk;
    
endmodule
