module LFSR(clk,set,Q);
input clk;
input set;
output reg [2:0]Q;

always @(posedge clk)
begin
    if(set)
        Q=3'b100;
    else
    begin
        Q[0]<=Q[0]^Q[2];
        Q[1]<=Q[0];
        Q[2]<=Q[1];
    end

end
endmodule
