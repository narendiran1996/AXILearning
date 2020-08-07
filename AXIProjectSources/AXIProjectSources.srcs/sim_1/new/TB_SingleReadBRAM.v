`timescale 1ns / 1ps

module TB_SingleReadBRAM();

reg M_AXI_ACLK_0;
reg M_AXI_ARESETN_0;
reg initRead_0;
    
SingleReadBRAM_wrapper TBSRB(M_AXI_ACLK_0, M_AXI_ARESETN_0, initRead_0);

initial
    begin
        M_AXI_ACLK_0 = 0;
        M_AXI_ARESETN_0 = 0;
        initRead_0 = 0;
    end

always
    begin
        #4 M_AXI_ACLK_0 = ~M_AXI_ACLK_0;
    end

initial
    begin
        #100
        M_AXI_ARESETN_0 = 1;
        #80
        initRead_0 = 1;
        #100
        $finish;
    end
endmodule
