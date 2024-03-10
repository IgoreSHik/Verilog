module reg_N_bits_with_areset(
	input reset, clk,
	input [N-1:0] D,
	output reg [N-1:0] Q);
	
	parameter N = 8;
		
	always @(posedge clk or posedge reset)
		if (reset)
			Q = 0;
		else if (clk)
			Q = D;
		
endmodule
