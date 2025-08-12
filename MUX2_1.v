module MUX2_1(I1, I0, SEL, O);

input [3:0] I1, I0;
input SEL;
output [3:0] O;
assign O = (SEL == 1'b0)? I0:I1;
endmodule
