module multiplier_with_buffer(
	input [7:0] data,
	input clk, aclr, ea, eb,
	output [15:0] P,
	output [8:0] A,
	output [8:0] B);
	
	reg_N_bits_with_areset_enable #(8) ra(aclr, clk, ea, data, A);
	reg_N_bits_with_areset_enable #(8) rb(aclr, clk, eb, data, B);
	
	wire [15:0] out;	
	multiplier_N_bits #(8) mult(A, B, out);	
	reg_N_bits_with_areset_enable #(16) (aclr, clk, 1, out, P); 
	
endmodule
