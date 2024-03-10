module adder_N_bits(
	input [N-1:0] A,
	input [N-1:0] B,
	input cin,
	output [N-1:0] S,
	output cout);

	parameter N = 4;
	
	wire [N-1:0] carry;
	genvar i;
	generate 
		for (i = 0; i < N; i = i + 1) begin:add
			if (i == 0)
				adder a(cin, A[i], B[i], S[i], carry[i]);
			else
				adder a(carry[i - 1], A[i], B[i], S[i], carry[i]);
		end
		
		assign cout = carry[N - 1];
	endgenerate
	
endmodule
