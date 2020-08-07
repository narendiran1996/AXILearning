`timescale 1ns / 1ps


module TB_SingleWriteBRAM();

reg clkIn;
reg initWrite;
reg resetIn;
wire writeErrorOccured;
wire [31:0]readOutput;

SingleWriteBRAM_wrapper TBSWB(clkIn, initWrite, readOutput, resetIn,  writeErrorOccured);

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
