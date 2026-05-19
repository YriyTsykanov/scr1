

module scr1_my_tb();

always_ff @(posedge scr1_top_tb_ahb.i_top.i_imem_ahb.clk) begin
    if (scr1_top_tb_ahb.i_top.i_imem_ahb.imem_resp == 2'b01) begin
        if (
        (scr1_top_tb_ahb.i_top.i_imem_ahb.imem_rdata[6:0] == 7'b0110011) &
        (scr1_top_tb_ahb.i_top.i_imem_ahb.imem_rdata[14:12] == 3'b101) &
        (scr1_top_tb_ahb.i_top.i_imem_ahb.imem_rdata[31:25] == 7'b0000000)
        ) begin

            $display("Detected command");

            $display("Instruction = %h", scr1_top_tb_ahb.i_top.i_imem_ahb.imem_rdata);
            $display("opcode = %b", scr1_top_tb_ahb.i_top.i_imem_ahb.imem_rdata[6:0]);
            $display("rd = %0d", scr1_top_tb_ahb.i_top.i_imem_ahb.imem_rdata[11:7]);
            $display("funct3 = %b", scr1_top_tb_ahb.i_top.i_imem_ahb.imem_rdata[14:12]);
            $display("rs1 = %1d", scr1_top_tb_ahb.i_top.i_imem_ahb.imem_rdata[19:15]);
            $display("rs2 = %0d", scr1_top_tb_ahb.i_top.i_imem_ahb.imem_rdata[24:20]);
            $display("funct7 = %b", scr1_top_tb_ahb.i_top.i_imem_ahb.imem_rdata[31:25]);
            
        end
    end
end
endmodule