module reg_N_bits_with_areset_enable(
	input reset, clk, enable,
	input [N-1:0] D,
	output reg [N-1:0] Q);
	
	parameter N = 8;
		
	always @(posedge clk, negedge reset)
		if (!reset)
			Q = 0;
		else if (enable)
			Q = D;
		else
			Q = Q;
		
endmodule
