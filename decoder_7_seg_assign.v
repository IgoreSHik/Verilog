module decoder_7_seg_assign (
	input [1:0] SW,
	output [0:6] HEX0);
		
	decoder_7_seg d7s(SW, HEX0);
	
endmodule
	