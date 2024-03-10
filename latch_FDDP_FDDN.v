module latch_FDDP_FDDN(
	input D, Clk,
	output reg Qa, Qb, Qc);
	
	always @(Clk, D)
		if (Clk)
			Qa = D;
	
	always @(posedge Clk)
		if (Clk)
			Qb = D;
		
	always @(negedge Clk)
		if (~Clk)
			Qc = D;
	
endmodule
	
	