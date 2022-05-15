`include "LFSR.v"
module clkgen(clk, clk_out);
input clk;
output clk_out;
reg clk_out;
always @(clk)
begin
    clk_out = clk;
end
endmodule

    module LFSR_tb;
reg clk,set;
wire [2:0]Q;
clkgen clkgen_tb(clk, clk_out);
LFSR LFSR_tb(clk,set,Q);

initial
    clk = 1'b0;
always
    #10 clk = ~clk;

initial
begin
    $dumpfile("LFSR.vcd");
    $dumpvars(0, LFSR_tb);
    #0  set=1;
    #20 set=0;
    #210 $finish;
end
endmodule
