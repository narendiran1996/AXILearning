`timescale 1ns / 1ps


module AXIMaster_Single_Read
(
    input wire  initRead,    
    input wire [31:0]readAddress,
    
    output wire [31:0]readOutput,
        
    //Global Signals
    input wire  M_AXI_ACLK,
    input wire  M_AXI_ARESETN,
    // Write address interface (issued by master)
    output wire [32-1 : 0] M_AXI_AWADDR,
    output wire [2 : 0] M_AXI_AWPROT,
    output wire  M_AXI_AWVALID,
    input wire  M_AXI_AWREADY,
    // Write Data interface (issued by master)
    output wire [32-1 : 0] M_AXI_WDATA,
    output wire [32/8-1 : 0] M_AXI_WSTRB,
    output wire  M_AXI_WVALID,
    input wire  M_AXI_WREADY,
    // Write Response interface (issued by slave)
    input wire [1 : 0] M_AXI_BRESP,
    input wire  M_AXI_BVALID,
    output wire  M_AXI_BREADY,
    // Read Address interface (issued by master)
    output wire [32-1 : 0] M_AXI_ARADDR,
    output wire [2 : 0] M_AXI_ARPROT,
    output wire  M_AXI_ARVALID,
    input wire  M_AXI_ARREADY,
    // Read Data interface (issued by slave):
    input wire [32-1 : 0] M_AXI_RDATA,
    input wire [1 : 0] M_AXI_RRESP,
    input wire  M_AXI_RVALID,
    output wire  M_AXI_RREADY
);

reg  	axi_arvalid;
reg  	axi_rready;
reg [32-1 : 0]axi_araddr;

assign M_AXI_ARADDR	= readAddress;
assign M_AXI_ARVALID	= axi_arvalid;
assign M_AXI_ARPROT	= 3'b001;
assign M_AXI_RREADY	= axi_rready;

reg  	init_txn_ff;
reg  	init_txn_ff2;
reg  	init_txn_edge;
wire  	init_txn_pulse;

// edge detection of initRead
assign init_txn_pulse	= (!init_txn_ff2) && init_txn_ff;
always @(posedge M_AXI_ACLK)										      
    begin                                      
        if (M_AXI_ARESETN == 0 )                                                   
          begin                                                                    
            init_txn_ff <= 1'b0;                                                   
            init_txn_ff2 <= 1'b0;                                                   
          end                                                                               
        else                                                                       
          begin  
            init_txn_ff <= initRead;
            init_txn_ff2 <= init_txn_ff;                                                                 
          end                                                                      
    end 

// for ARVALID                                                                
always @(posedge M_AXI_ACLK)                                                     
    begin                                                                            
        if (M_AXI_ARESETN == 0)                                                       
          begin                                                                        
            axi_arvalid <= 1'b0;                                                       
          end     
        else if (init_txn_pulse == 1'b1)                                                    
          begin                                                                        
            axi_arvalid <= 1'b1;                                                       
          end         
        else if (M_AXI_ARREADY==1 && axi_arvalid==1)                                         
          begin                                                                        
            axi_arvalid <= 1'b0;                                                       
          end                                                                            
    end
    
// for RREADY
always @(posedge M_AXI_ACLK)                                    
    begin                                                                 
        if (M_AXI_ARESETN == 0)                                            
          begin                                                             
            axi_rready <= 1'b0;                                             
          end                                         
        else if (M_AXI_RVALID==1 && axi_rready==0)                               
          begin                                                             
            axi_rready <= 1'b1;                                             
          end                                                                
        else if (axi_rready==1)                                                
          begin                                                             
            axi_rready <= 1'b0;                                             
          end                                                               
    end 
    
// Reading the data
reg [31:0]myVal;
always @(posedge M_AXI_ACLK)                                                      
  begin                                                                             
    if (M_AXI_ARESETN == 0)                                                         
        myVal <= 1'b0;                                                     
    else if (M_AXI_RVALID==1 && axi_rready==1)         
      myVal <= M_AXI_RDATA;                                                        
    else                                                                            
      myVal <= myVal;                                               
  end 

assign readOutput = myVal;
endmodule
