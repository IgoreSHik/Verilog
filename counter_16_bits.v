module counter_16_bits(
	input enable, clk, areset,
	output reg [15:0] Q);
	
	always @(posedge clk, negedge areset)
		if (!areset) Q <= {16{1'b0}};
		else if (enable) Q <= Q + 1;
		else Q <= Q;
	
endmodule
