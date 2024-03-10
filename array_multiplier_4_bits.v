module array_multiplier_4_bits(
	input [3:0] A,
	input [3:0] B,
	output [7:0] P);
	
	wire [3:0] PP[3:0];
	wire [3:0] s[1:3];
	wire cout[1:3];
	
	assign PP[0] = A & {4{B[0]}};
	assign PP[1] = A & {4{B[1]}};
	assign PP[2] = A & {4{B[2]}};
	assign PP[3] = A & {4{B[3]}};	
	
	adder_4 a0(1'b0, {1'b0, PP[0][3:1]}, PP[1], s[1], cout[1]);
	adder_4 a1(1'b0, {cout[1], s[1][3:1]}, PP[2], s[2], cout[2]);
	adder_4 a2(1'b0, {cout[2], s[2][3:1]}, PP[3], s[3], cout[3]);
	
	assign P[0] = PP[0][0];
	assign P[1] = s[1][0];
	assign P[2] = s[2][0];
	assign P[6:3] = s[3];
	assign P[7] = cout[3];
	
endmodule
