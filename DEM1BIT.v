module DEM1BIT(clk, q);
input clk;
output q;
reg q;
always @ (posedge clk)
begin
	q <= q + 1;
end
endmodule
