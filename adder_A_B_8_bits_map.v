module adder_A_B_8_bits_map(
	input [7:0] SW,
	input [0:1] KEY,
	output [0:6] HEX0,
	output [0:6] HEX1,
	output [0:6] HEX2,
	output [0:6] HEX3,
	output [0:6] HEX4,
	output [0:6] HEX5,
	output [0:4] LEDR);
	
	wire [7:0] B;
	wire [7:0] S;
	
	adder_A_B_8_bits add(~KEY[0], ~KEY[1], SW, B, LEDR[0], S);
	display_2hex_alt disA(SW, HEX0, HEX1);
	display_2hex_alt disB(B, HEX2, HEX3);
	display_2hex_alt disS(S, HEX4, HEX5);
	
endmodule
	