module DEM_99_00(clk, reset, enable, dv, ch);

input clk; // Clock
input reset; // Reset về 00
input enable; // Cho phép đếm
output [3:0] dv; // Hàng đơn vị
output [3:0] ch; // Hàng chục
reg [3:0] dv = 4'd9; // Hàng đơn vị
reg [3:0] ch = 4'd9; // Hàng chục
always @ (posedge clk or posedge reset) begin
	if (reset) begin
		dv <= 4'd9;
		ch <= 4'd9;
	end else if (!enable) begin
		if (dv == 4'd0) begin
			dv <= 4'd9;
			if (ch == 4'd0)
				ch <= 4'd9; // Reset về 00 khi đạt 99
			else
				ch <= ch - 4'd1;
		end else begin
			dv <= dv - 4'd1;
		end
	end
end
endmodule
