module adder_A_B_8_bits(
	input areset, clk,
	input [7:0] A,
	output reg [7:0] B,
	output reg cout,
	output reg [7:0] S);
	
	wire [7:0] num;
	
	reg_N_bits_with_areset #(8) register(areset, clk, A, num);
	
	always @(A or num) begin
		S = num + A;
		B = num;
		cout = num[7] & A[7];
	end	
	
endmodule
