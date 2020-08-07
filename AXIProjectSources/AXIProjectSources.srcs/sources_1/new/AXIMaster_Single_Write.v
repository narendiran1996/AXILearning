`timescale 1ns / 1ps


module AXIMaster_Single_Write
(
    input wire  initWrite,
    output wire writeDone,
    output wire writeErrorOccured,
    
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
    
    
    // Read Data interface (issued by slave)
    input wire [32-1 : 0] M_AXI_RDATA,
    input wire [1 : 0] M_AXI_RRESP,
    input wire  M_AXI_RVALID,
    output wire  M_AXI_RREADY
);

reg  	axi_awvalid;
reg  	axi_wvalid;
reg  	axi_bready;
reg [32-1 : 0] 	axi_awaddr;
reg [32-1 : 0] 	axi_wdata;

assign M_AXI_AWADDR	= 32'h00000000;
assign M_AXI_AWPROT	= 3'b000;
assign M_AXI_AWVALID	= axi_awvalid;

assign M_AXI_WDATA	= 32'haeaeaeae;
assign M_AXI_WVALID	= axi_wvalid;
assign M_AXI_WSTRB	= 4'b1111;

assign M_AXI_BREADY	= axi_bready;


reg  	init_txn_ff;
reg  	init_txn_ff2;
wire  	init_txn_pulse;    

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
            init_txn_ff <= initWrite;
            init_txn_ff2 <= init_txn_ff;                                                                 
          end                                                                      
    end 

// for AWVALID
always @(posedge M_AXI_ACLK)										      
    begin                                                              
    if (M_AXI_ARESETN == 0)                                                   
      begin                                                                    
        axi_awvalid <= 1'b0;                                                   
      end                                                                      
    else                                                                       
      begin                                                                    
        if ( init_txn_pulse == 1'b1)                                                
          begin                                                                
            axi_awvalid <= 1'b1;                                               
          end                                                                  
        else if (M_AXI_AWREADY && axi_awvalid)                                 
          begin                                                                
            axi_awvalid <= 1'b0;                                               
          end                                                                  
      end                                                                      
    end                                                                          

// for WVALID
always @(posedge M_AXI_ACLK)                                        
    begin                                                                         
     if (M_AXI_ARESETN == 0 )                                                    
       begin                                                                     
         axi_wvalid <= 1'b0;                                                     
       end                                                                       
     else if (init_txn_pulse == 1'b1)                                                
       begin                                                                     
         axi_wvalid <= 1'b1;                                                     
       end                                                                        
     else if (M_AXI_WREADY && axi_wvalid)                                        
       begin                                                                     
        axi_wvalid <= 1'b0;                                                      
       end                                                                       
    end  
  
// for BREADY
always @(posedge M_AXI_ACLK)                                    
  begin                                                                
    if (M_AXI_ARESETN == 0)                                           
      begin                                                            
        axi_bready <= 1'b0;                                            
      end                                                             
    else if (M_AXI_BVALID==1 && axi_bready==0)                              
      begin                                                            
        axi_bready <= 1'b1;                                            
      end                                                              
    else if (axi_bready==1)                                               
      begin                                                            
        axi_bready <= 1'b0;                                            
      end                                                              
    else                                                               
      axi_bready <= axi_bready;                                        
  end   

assign writeErrorOccured = (axi_bready & M_AXI_BVALID & M_AXI_BRESP[1]);
assign writeDone = (axi_bready & M_AXI_BVALID);
endmodule
