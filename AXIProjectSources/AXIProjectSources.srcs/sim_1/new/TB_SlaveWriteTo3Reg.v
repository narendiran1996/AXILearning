`timescale 1ns / 1ps


module TB_SlaveWriteTo3Reg();



reg clkIn;
reg initWrite;
wire [31:0]out1;
wire [31:0]out2;
wire [31:0]out3;
reg resetIn;
wire writeDone_0;
wire writeErrorOccured_0;

SlaveWriteTo3Reg_wrapper TNSWT3R (clkIn, initWrite, out1, out2, out3, resetIn, writeDone_0, writeErrorOccured_0);
initial
    begin
        clkIn = 0;
        initWrite = 0;
        resetIn = 0;
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
        initWrite = 1;
        #100        
        $finish;
    end
endmodule
