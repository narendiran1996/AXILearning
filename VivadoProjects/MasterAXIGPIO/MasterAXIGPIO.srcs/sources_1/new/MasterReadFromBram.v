`timescale 1ns / 1ps

// These ports are for Master AXI
module MasterReadFromBram
                (
                    // Extra input and output signals
                    input wire initializeOperation,
                    input wire [32-1:0]readAddr,
                    output reg [32-1:0]readValue,
                    output reg readValid,

                    // Global Signals clk and reset
                    input wire M_AXI_ACLK,
                    input wire M_AXI_ARESETn,

                    // Write Address Channel (issued by Master)
                    output wire [32-1:0]M_AXI_AWADDR,
                    output wire [2:0]M_AXI_AWPROT,
                    output wire M_AXI_AWVALID,
                    input wire M_AXI_AWREADY,

                    // Write Data Channel (issued by Master)
                    output wire [32-1:0]M_AXI_WDATA,
                    output wire [(32/8)-1:0]M_AXI_WSTRB,
                    output wire M_AXI_WVALID,
                    input wire M_AXI_WREADY,
                    output wire M_AXI_WLAST,

                    // Write Response Channel (issued by Slave)
                    input wire [1:0]M_AXI_BRESP,
                    input wire M_AXI_BVALID,
                    output wire M_AXI_BREADY,

                    // Read Address Channel (issued by Master)
                    output wire [32-1:0]M_AXI_ARADDR,
                    output wire [2:0]M_AXI_ARPROT,
                    output wire M_AXI_ARVALID,
                    input wire M_AXI_ARREADY,

                    // Read Data Channel (issued by Slave)
                    input wire [32-1:0]M_AXI_RDATA,
                    input wire [1:0]M_AXI_RRESP,                    
                    input wire M_AXI_RVALID,
                    output wire M_AXI_RREADY,
                    input wire M_AXI_RLAST
                );


/* 
    outputs' are made registers for using inside always block
*/

// Write Address Channel (issued by Master)
reg [32-1:0]awaddr;
reg [2:0]awprot;
reg awvalid;

assign M_AXI_AWADDR = awaddr;
assign M_AXI_AWPROT = awprot;
assign M_AXI_AWVALID = awvalid;


// Write Data Channel (issued by Master)
reg [32-1:0]wdata;
reg [(32/8)-1:0]wstrb;
reg wvalid;

assign M_AXI_WDATA = wdata;
assign M_AXI_WSTRB = wstrb;
assign M_AXI_WVALID = wvalid;


// Write Response Channel (issued by Slave)
reg bready;

assign  M_AXI_BREADY = bready;


// Read Address Channel (issued by Master)
reg [32-1:0]araddr;
reg [2:0]arprot;
reg arvalid;

assign M_AXI_ARADDR = araddr;
assign M_AXI_ARPROT = arprot;
assign M_AXI_ARVALID = arvalid;


// Read Data Channel (issued by Slave)
reg rready;

assign M_AXI_RREADY = rready;



// Edge Detection to intialize the transaction
wire doTransaction;
reg temp1, temp2;
always @(posedge M_AXI_ACLK)
    begin
        if(M_AXI_ARESETn == 0)
            begin
                temp1 <= 0;
                temp2 <= 0;
            end
        else
            begin
                temp1 <= initializeOperation;
                temp2 <= temp1;
            end
    end

assign doTransaction = (temp1 == 1)  && (temp2 == 0);



// Reading is the main operation here, hence only read signals are driven

// some basic intialization - which is constatnt
always @(*)
    begin
        araddr = readAddr<<2;  // we can now use 0, 1, 2, 3, ... for addressing
        arprot = 3'b001;
    end


// driving M_AXI_ARVALID
always @(posedge M_AXI_ACLK)
    begin
        if(M_AXI_ARESETn == 0)
            arvalid <= 0;
        else if(doTransaction == 1)
            arvalid <= 1;
        else if(M_AXI_ARVALID == 1 &&  M_AXI_ARREADY == 1)
            arvalid <= 0;
        else
            arvalid <= arvalid;
    end



// driving M_AXI_RREADY
always @(posedge M_AXI_ACLK)
    begin
        if(M_AXI_ARESETn == 0)
            rready <= 0;
        else if(M_AXI_RVALID == 1 &&  M_AXI_RREADY == 0)
            rready <= 1;
        else if(M_AXI_RREADY == 1)
            rready <= 0;
        else
            rready <= rready;
    end

// reading the actual data
always @(posedge M_AXI_ACLK)
    begin
        if(M_AXI_ARESETn == 0)
            readValue <= 0;
        else if (M_AXI_RVALID == 1 && M_AXI_RREADY == 1)
            readValue <= M_AXI_RDATA;
        else
            readValue <= readValue;
    end

// external output valid signal drving
always @(posedge M_AXI_ACLK)
    begin
        if(M_AXI_ARESETn == 0)
            readValid <= 0;
        else if (M_AXI_RVALID == 1 && M_AXI_RREADY == 1)
            readValid <= 1;
        else
            readValid <= 0;
    end

always @(*)
    begin
        awaddr = 0;
        awprot = 0;
        awvalid = 0;
        wdata = 0;
        wstrb = 0;
        wvalid = 0;
        bready = 0;
    end
endmodule
