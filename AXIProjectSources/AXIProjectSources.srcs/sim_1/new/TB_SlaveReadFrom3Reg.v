`timescale 1ns / 1ps


module TB_SlaveReadFrom3Reg();

reg clkIn;
reg initRead;
reg [31:0]readAddress;
wire [31:0]readOutput;
reg resetIn;
  
SlaveReadFrom3Reg_wrapper TBSRF3R (clkIn,initRead,readAddress, readOutput, resetIn);

initial
    begin
        clkIn = 0;
        initRead = 0;
        resetIn = 0;
        readAddress = 0;
    end

always
    begin
        #4 clkIn = ~clkIn;
    end

initial
    begin
        #100
        resetIn = 1;
        #80
        initRead = 1;
        #100 
        initRead = 0;
        resetIn = 0;
        readAddress = 4; 
         #100
        resetIn = 1;
        #80
        initRead = 1;
        #100       
        $finish;
    end
endmodule
