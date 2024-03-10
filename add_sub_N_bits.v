module add_sub_N_bits(
	input [N-1:0] A,
	input clk, aclr, add_sub,
	output reg [N-1:0] S,
	output reg carry, 
	output reg overflow);
	
	parameter N = 8;
	
	always @(posedge clk) begin
		if (aclr)
			S = {N{1'b0}};
		else if (~add_sub) begin
			{carry, S} <= A + S;
			overflow <= carry ^ S[N-1];
		end
		else if (add_sub) begin
			{carry, S} <= S - A;
			overflow <= carry ^ S[N-1];
		end
	end

endmodule
