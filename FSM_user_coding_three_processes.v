module FSM_user_coding_three_processes(
	input w, clk, aclr,
	output reg z,
	output [3:0] y
);

	localparam [3:0]
		A = 4'b0000,
		B = 4'b0001,
		C = 4'b0010,
		D = 4'b0011,
		E = 4'b0100,
		F = 4'b0101,
		G = 4'b0110,
		H = 4'b0111,
		I = 4'b1000;
		
	reg [3:0] state, next;
	
	always @(posedge clk, negedge aclr) begin
		if (!aclr) state <= A;
		else state <= next;
	end
	
	always @(*)
		case (state)
			A: next = (w ? F : B);
			B: next = (w ? F : C);
			C: next = (w ? F : D);
			D: next = (w ? F : E);
			E: next = (w ? F : E);
			F: next = (w ? G : B);
			G: next = (w ? H : B);
			H: next = (w ? I : B);
			I: next = (w ? I : B);
		endcase
		
	always @(*)
		case (state)
		A: z = 0;
		B: z = 0;
		C: z = 0;
		D: z = 0;
		E: z = 1;
		F: z = 0;
		G: z = 0;
		H: z = 0;
		I: z = 1;
		endcase
	
	assign y = state;
endmodule
