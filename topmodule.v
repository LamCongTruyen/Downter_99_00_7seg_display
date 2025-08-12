module top_module(clk_ht, reset, enable, seg, cathode);
input clk_ht, reset, enable;
output [6:0] seg;
output cathode;
wire [3:0] w4, w5, w6;
wire w1, w2;
CHIA_2HZ IC1 (.clk_ht(clk_ht), .clk_2hz(w1));
CHIA_1KHZ IC2 (.clk_ht(clk_ht), .clk_1khz(w2));
DEM1BIT IC3 (.clk(w2), .q(cathode));
GM7DOAN_CC IC4 (.I(w6), .Y(seg));
MUX2_1 IC5 (.I1(w4), .I0(w5), .SEL(cathode), .O(w6));
DEM_99_00 IC6 (.clk(w1), .reset(reset), .enable(enable), .dv(w5), .ch(w4));
endmodule
