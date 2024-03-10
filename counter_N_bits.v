module counter_N_bits(
	input enable, clk, areset,
	output reg [N-1:0] Q);
	
	parameter N = 16;
	
	always @(posedge clk, negedge areset)
		if (!areset) Q <= {N{1'b0}};
		else if (enable) Q <= Q + 1;
		else Q <= Q;
	
endmodule
