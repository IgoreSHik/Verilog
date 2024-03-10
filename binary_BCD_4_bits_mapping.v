module binary_BCD_4_bits_mapping (
	input [3:0] SW,
	output [0:6] HEX0,
	output [0:6] HEX1);
		
	binary_BCD_4_bits bcd4(SW, HEX0, HEX1);
	
endmodule
