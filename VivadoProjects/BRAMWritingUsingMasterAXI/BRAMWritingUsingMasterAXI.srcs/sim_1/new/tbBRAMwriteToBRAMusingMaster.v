`timescale 1ns / 1ps


module tbBRAMwriteToBRAMusingMaster();

reg clkIn;
reg initializeOperation_W;
reg initializeOperation_R;
reg [31:0]readAddr_0;
wire readValid_0;
wire [31:0]readValue_0;
reg resetN;
reg [31:0]writeAddr_0;
reg [31:0]writeData_0;
wire writeDone_0;


BlkBRAMWriteUsingMaster_wrapper DUT
                (
                    clkIn,
                    initializeOperation_W,
                    initializeOperation_R,
                    readAddr_0,
                    readValid_0,
                    readValue_0,
                    resetN,
                    writeAddr_0,
                    writeData_0,
                    writeDone_0
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
        readAddr_0 = 0;
        resetN = 0;
        initializeOperation_R = 0;
        initializeOperation_W = 0;
        writeData_0 = 0;
        writeAddr_0 = 0;
        #137;
        resetN = 1;
        #146;

        // reading empty data
        readAddr_0 = 0;
        initializeOperation_R = 1;
        #12
        initializeOperation_R = 0;        
        #200;

        // writing data
        writeData_0 = 32'hfaceface;
        writeAddr_0 = 0;
        initializeOperation_W = 1;
        #12
        initializeOperation_W = 0;    
        #200


        // reading data
        readAddr_0 = 0;
        initializeOperation_R = 1;
        #12
        initializeOperation_R = 0;        
        #200;


        // writing data
        writeData_0 = 32'hdab00bad;
        writeAddr_0 = 1;
        initializeOperation_W = 1;
        #12
        initializeOperation_W = 0;    
        #200


        // reading data
        readAddr_0 = 1;
        initializeOperation_R = 1;
        #12
        initializeOperation_R = 0;        
        #200;


         // writing data
        writeData_0 = 32'h1100ccac;
        writeAddr_0 = 2;
        initializeOperation_W = 1;
        #12
        initializeOperation_W = 0;    
        #200


        // reading data
        readAddr_0 = 2;
        initializeOperation_R = 1;
        #12
        initializeOperation_R = 0;        
        #200;

        $finish;


    end

endmodule
