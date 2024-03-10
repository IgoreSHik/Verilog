module regn(
	input [N-1:0] R, 
	input Rin, Clock, 
	output reg [N-1:0] Q);
	
	parameter N = 9;

	always @(posedge Clock)
		if (Rin)
			Q <= R;

endmodule