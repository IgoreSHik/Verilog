module rotate_display(
	input clk,
	output [0:6] h0,
	output [0:6] h1,
	output [0:6] h2,
	output [0:6] h3);
	
	wire [1:0] q;
	mod_10_with_delay #(4, 50) m(clk, q);
	
	decoder_7_seg d0(q % 4, h0);
	decoder_7_seg d1((q + 1) % 4, h1);
	decoder_7_seg d2((q + 2) % 4, h2);
	decoder_7_seg d3((q + 3) % 4, h3);	
	
endmodule
