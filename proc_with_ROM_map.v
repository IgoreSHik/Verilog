module proc_with_ROM_map(
	input [9:0] SW,
	input [1:0] KEY,
	output [9:0] LEDR);
	
	proc_with_ROM proc(SW[0], KEY[0], KEY[1], SW[9], LEDR[9], LEDR[8:0]);

endmodule