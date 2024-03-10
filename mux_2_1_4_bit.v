module mux_2_1_4_bit (
	input [3:0] x,
	input [3:0] y,
	input s,
	output [3:0] m);

	mux_2_1_1_bit m0(x[0], y[0], s, m[0]);
	mux_2_1_1_bit m1(x[1], y[1], s, m[1]);
	mux_2_1_1_bit m2(x[2], y[2], s, m[2]);
	mux_2_1_1_bit m3(x[3], y[3], s, m[3]);
	
endmodule
