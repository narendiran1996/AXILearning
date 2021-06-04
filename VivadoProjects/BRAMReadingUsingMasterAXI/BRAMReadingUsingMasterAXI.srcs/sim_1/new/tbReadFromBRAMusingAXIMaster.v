`timescale 1ns / 1ps

module tbReadFromBRAMusingAXIMaster();

reg clkIn;
reg initializeOperation;
reg [31:0]readAddr;
wire readValid;
wire [31:0]readValue;
reg resetN;

BRAMReadingMaster_wrapper DUT
                (
                    clkIn,
                    initializeOperation,
                    readAddr,
                    readValid,
                    readValue,
                    resetN
                );

always
    begin
        clkIn = 0;
        #5;
        clkIn = 1;    
        #5;
    end

initial 
    begin
        readAddr = 0;
        resetN = 0;
        initializeOperation = 0;
        #137;
        resetN = 1;
        #146;
        initializeOperation = 1;
        #12
        initializeOperation = 0;        
        #200;

        readAddr = 1;
        initializeOperation = 1;
        #12
        initializeOperation = 0;        
        #200;


        readAddr = 2;
        initializeOperation = 1;
        #12
        initializeOperation = 0;
        #200;
        $finish;
    end

endmodule
