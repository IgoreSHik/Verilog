module multiplier_N_bits_map(
	input [9:0] SW,
	input [1:0] KEY,
	output [0:6] HEX0,
	output [0:6] HEX1,
	output [0:6] HEX2,
	output [0:6] HEX3,
	output [9:0] LEDR
);

	wire [15:0] P;
	wire [7:0] A;
	wire [7:0] B;	
	multiplier_with_buffer mb(SW[7:0], KEY[1], KEY[0], SW[9], SW[8], P, A, B);
	
	decoder_hex_16 d0(P[3:0], HEX0);
	decoder_hex_16 d1(P[7:4], HEX1);
	decoder_hex_16 d2(P[11:8], HEX2);
	decoder_hex_16 d3(P[15:12], HEX3);
	
	reg [7:0] out;
	always @(*)
		if (SW[9])
			out = A;
		else if (SW[8])
			out = B;
		else
			out = 0;
			
	assign LEDR[7:0] = out;
	assign LEDR[9] = KEY[1];
	assign LEDR[8] = KEY[0];
	
endmodule
