
//testbench
module TB_DEM_99_00;

	// Inputs
	reg clk;
	reg reset;
	reg enable;

	// Outputs
	wire [3:0] dv;
	wire [3:0] ch;

	// Instantiate the Unit Under Test (UUT)
	DEM_99_00 uut (
		.clk(clk), 
		.reset(reset), 
		.enable(enable), 
		.dv(dv), 
		.ch(ch)
	);
	
	always #5 clk = ~clk;
	
	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		enable = 1;

		// Wait 100 ns for global reset to finish
		  #10 reset = 1;
        #10 reset = 0;
        
        // Bắt đầu đếm
        #10 enable = 0;

        // Chạy mô phỏng trong 2000 ns (~100 xung clk)
        #2000 
		  $stop;
        
		// Add stimulus here

	end
      
endmodule
