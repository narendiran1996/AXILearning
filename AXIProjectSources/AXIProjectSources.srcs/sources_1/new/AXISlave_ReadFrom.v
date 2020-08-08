`timescale 1ns / 1ps

module AXISlave_ReadFrom
(
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

reg [32-1 : 0] 	axi_araddr;
reg  	axi_arready;
reg [32-1 : 0] 	axi_rdata;
reg [1 : 0] 	axi_rresp;
reg  	axi_rvalid;
	
assign S_AXI_ARREADY = axi_arready;
assign S_AXI_RDATA = axi_rdata;
assign S_AXI_RRESP = axi_rresp;
assign S_AXI_RVALID = axi_rvalid;
// for ARREADY and ARADDR
always @( posedge S_AXI_ACLK )
    begin
        if ( S_AXI_ARESETN == 1'b0 )
            begin
            axi_arready <= 1'b0;
            axi_araddr  <= 32'b0;
            end 
        else
            begin    
                if (~axi_arready && S_AXI_ARVALID)
                    begin
                      // indicates that the slave has acceped the valid read address
                      axi_arready <= 1'b1;
                      // Read address latching
                      axi_araddr  <= S_AXI_ARADDR;
                    end
                else
                    begin
                      axi_arready <= 1'b0;
                    end
            end 
    end  

// for RVALID and RRESP
always @( posedge S_AXI_ACLK )
    begin
      if ( S_AXI_ARESETN == 1'b0 )
        begin
          axi_rvalid <= 0;
          axi_rresp  <= 0;
        end 
      else
        begin    
          if (axi_arready && S_AXI_ARVALID && ~axi_rvalid)
            begin
              axi_rvalid <= 1'b1;
              axi_rresp  <= 2'b0; // 'OKAY' response
            end   
          else if (axi_rvalid && S_AXI_RREADY)
            begin
              axi_rvalid <= 1'b0;
            end                
        end
    end 

// address decoding
reg [31:0]reg_data_out;
always @(*)
	begin
	      // Address decoding for reading registers
	      case ( axi_araddr[3:1] )
	        2'h0   : reg_data_out <= 32'habcdef01;
	        2'h1   : reg_data_out <= 32'hcafecafe;
	        2'h2   : reg_data_out <= 32'hd00dd00d;
	        default : reg_data_out <= 0;
	      endcase
	end

// for RDATA
always @( posedge S_AXI_ACLK )
    begin
        if ( S_AXI_ARESETN == 1'b0 )
            begin
              axi_rdata  <= 0;
            end 
        else
            begin    
              if (axi_arready & S_AXI_ARVALID & ~axi_rvalid)
                begin
                  axi_rdata <= reg_data_out;     // register read data
                end   
        end
    end  
  
endmodule
