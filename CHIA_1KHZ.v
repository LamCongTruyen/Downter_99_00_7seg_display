module CHIA_1KHZ(clk_ht, clk_1khz);
input clk_ht;
output clk_1khz;
reg clk_1khz = 0;
reg [4:0] counter = 0;
always @ (posedge clk_ht) begin
	counter <= counter + 1;
	if (counter == 5'd50) begin
		counter <= 0;
		clk_1khz <= ~clk_1khz;
	end
	else
		clk_1khz <= clk_1khz;
end
endmodule
