module CHIA_2HZ(
    input clk_ht,   // Clock vào 100kHz
    output reg clk_2hz = 0  // Clock ra 2Hz
);
    reg [15:0] counter = 0;  // Bộ đếm

    always @ (posedge clk_ht) begin
        counter <= counter + 1;
        if (counter == 16'd25000) begin
            counter <= 0;
            clk_2hz <= ~clk_2hz;
        end
    end
endmodule
