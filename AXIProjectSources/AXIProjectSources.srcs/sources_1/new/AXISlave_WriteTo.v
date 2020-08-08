`timescale 1ns / 1ps


module AXISlave_WriteTo
(
    output wire [31:0]out1,
    output wire [31:0]out2,
    output wire [31:0]out3,
    
    //Global Signals
    input wire  S_AXI_ACLK,
    input wire  S_AXI_ARESETN,
    // Write address interface (issued by master)
    input wire [32-1 : 0] S_AXI_AWADDR,
    input wire [2 : 0] S_AXI_AWPROT,
    input wire  S_AXI_AWVALID,
    output wire  S_AXI_AWREADY, 
    // Write Data interface (issued by Master)
    input wire [32-1 : 0] S_AXI_WDATA,
    input wire [(32/8)-1 : 0] S_AXI_WSTRB,
    input wire  S_AXI_WVALID,
    output wire  S_AXI_WREADY,
     // Write Response interface (issued by slave)
    output wire [1 : 0] S_AXI_BRESP,
    output wire  S_AXI_BVALID,
    input wire  S_AXI_BREADY,     
    // Read Address interface (issued by master)
    input wire [32-1 : 0] S_AXI_ARADDR,
    input wire [2 : 0] S_AXI_ARPROT,
    input wire  S_AXI_ARVALID,
    output wire  S_AXI_ARREADY,
    // Read Data interface (issued by slave)
    output wire [32-1 : 0] S_AXI_RDATA,
    output wire [1 : 0] S_AXI_RRESP,
    output wire  S_AXI_RVALID,
    input wire  S_AXI_RREADY

);

reg [32-1 : 0] 	axi_awaddr;
reg  	axi_awready;
reg  	axi_wready;
reg [1 : 0] 	axi_bresp;
reg  	axi_bvalid;

assign S_AXI_AWREADY	= axi_awready;
assign S_AXI_WREADY	= axi_wready;
assign S_AXI_BRESP	= axi_bresp;
assign S_AXI_BVALID	= axi_bvalid;

// for AWREADY
always @( posedge S_AXI_ACLK )
    begin
        if ( S_AXI_ARESETN == 1'b0 )
            begin
            axi_awready <= 1'b0;
            end 
        else
            begin    
                if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID)
                    begin
                    axi_awready <= 1'b1;
                    end
                else if (S_AXI_BREADY && axi_bvalid)
                    begin
                    axi_awready <= 1'b0;
                    end
                else           
                    begin
                    axi_awready <= 1'b0;
                    end
            end 
    end 

// for AWADDR
always @( posedge S_AXI_ACLK )
    begin
        if ( S_AXI_ARESETN == 1'b0 )
            begin
            axi_awaddr <= 0;
            end 
        else
            begin    
                if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID)
                    begin
                        axi_awaddr <= S_AXI_AWADDR;
                    end
            end 
    end       

// for WREADY
always @( posedge S_AXI_ACLK )
    begin
        if ( S_AXI_ARESETN == 1'b0 )
            begin
                axi_wready <= 1'b0;
            end 
        else
            begin    
                if (~axi_wready && S_AXI_WVALID && S_AXI_AWVALID )
                    begin
                        axi_wready <= 1'b1;
                    end
                else
                    begin
                        axi_wready <= 1'b0;
                    end
            end 
    end       
	
// for writing WDATA
reg [32-1:0]slv_reg0, slv_reg1, slv_reg2;
integer	 byte_index;

always @( posedge S_AXI_ACLK )
    begin
    if ( S_AXI_ARESETN == 1'b0 )
        begin
        slv_reg0 <= 0;
        slv_reg1 <= 0;
        slv_reg2 <= 0;
        end 
    else if (axi_wready && S_AXI_WVALID && axi_awready && S_AXI_AWVALID)
        begin
            case ( axi_awaddr[3:2] )
                2'h0:
                    for ( byte_index = 0; byte_index <= (32/8)-1; byte_index = byte_index+1 )
                    if ( S_AXI_WSTRB[byte_index] == 1 ) begin
                    // Respective byte enables are asserted as per write strobes 
                    // Slave register 0
                    slv_reg0[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                    end  
                2'h1:
                    for ( byte_index = 0; byte_index <= (32/8)-1; byte_index = byte_index+1 )
                    if ( S_AXI_WSTRB[byte_index] == 1 ) begin
                    // Respective byte enables are asserted as per write strobes 
                    // Slave register 1
                    slv_reg1[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                    end  
                2'h2:
                    for ( byte_index = 0; byte_index <= (32/8)-1; byte_index = byte_index+1 )
                    if ( S_AXI_WSTRB[byte_index] == 1 ) begin
                    // Respective byte enables are asserted as per write strobes 
                    // Slave register 2
                    slv_reg2[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                end                  
                default : begin
                slv_reg0 <= slv_reg0;
                slv_reg1 <= slv_reg1;
                slv_reg2 <= slv_reg2;
                end
            endcase
        end
    end
    
// for BVALID and BRESP
always @( posedge S_AXI_ACLK )
    begin
      if ( S_AXI_ARESETN == 1'b0 )
        begin
          axi_bvalid  <= 0;
          axi_bresp   <= 2'b0;
        end 
      else
        begin    
          if (axi_awready && S_AXI_AWVALID && ~axi_bvalid && axi_wready && S_AXI_WVALID)
            begin
              axi_bvalid <= 1'b1;
              axi_bresp  <= 2'b0; // 'OKAY' response 
            end
          else
            begin
              if (S_AXI_BREADY && axi_bvalid)   
                begin
                  axi_bvalid <= 1'b0; 
                end  
            end
        end
    end 
    
assign out1 = slv_reg0;
assign out2 = slv_reg1;
assign out3 = slv_reg2;


endmodule
