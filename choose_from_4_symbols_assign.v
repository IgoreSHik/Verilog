module choose_from_4_symbols_assign (
	input [9:0] SW,
	output [0:6] HEX0,
	output [9:0] LEDR);

	choose_from_4_symbols cf4s(SW, HEX0);
	assign LEDR = SW;
	
endmodule
