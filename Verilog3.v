module FSM_one_hot(
	input w, clk, aclr,
	output z, 
	output [8:0] y);

	localparam [8:0]
		A = 9'b000000001,
		B = 9'b000000010,
		C = 9'b000000100,
		D = 9'b000001000,
		E = 9'b000010000,
		F = 9'b000100000,
		G = 9'b001000000,
		H = 9'b010000000,
		I = 9'b100000000;
	
endmodule
