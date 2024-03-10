module mux_4_1_2_bit (
	input [1:0] u,
	input [1:0] v,
	input [1:0] w,
	input [1:0] x,
	input s0, s1,
	output [1:0] m);

	mux_4_1_1_bit m0(u[0], v[0], w[0], x[0], s0, s1, m[0]);
	mux_4_1_1_bit m1(u[1], v[1], w[1], x[1], s0, s1, m[1]);
	
endmodule
