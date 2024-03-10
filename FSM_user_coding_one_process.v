module FSM_user_coding_one_process(
	input w, clk, aclr,
	output z,
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
		
	reg [3:0] state;
	
	always @(posedge clk, negedge aclr) begin
		if (!aclr) state <= A;
		else begin
			case (state)
			A: state <= (w ? F : B);
			B: state <= (w ? F : C);
			C: state <= (w ? F : D);
			D: state <= (w ? F : E);
			E: state <= (w ? F : E);
			F: state <= (w ? G : B);
			G: state <= (w ? H : B);
			H: state <= (w ? I : B);
			I: state <= (w ? I : B);
			endcase
		end
	end
	
	assign z = (state == E) || (state == I);
	assign y = state;
endmodule
