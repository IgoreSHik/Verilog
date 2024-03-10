module rtc_map(
	input CLOCK2_50, KEY0,
	output [0:6] HEX0,
	output [0:6] HEX1,
	output [0:6] HEX2,
	output [0:6] HEX3,
	output [0:6] HEX4,
	output [0:6] HEX5);
	
	wire [3:0] ml;
	wire [3:0] mh;
	wire [3:0] sl;
	wire [3:0] sh;
	wire [3:0] msl;
	wire [3:0] msh;
	
	real_time_clock rtc(CLOCK2_50, ~KEY0, ml, mh, sl, sh, msl, msh);
	
	wire e;
	decoder_hex_10 dms0(msl, HEX0, e);
	decoder_hex_10 dms1(msh, HEX1, e);
	decoder_hex_10 ds0(sl, HEX2, e);
	decoder_hex_10 ds1(sh, HEX3, e);
	decoder_hex_10 dm0(ml, HEX4, e);
	decoder_hex_10 dm1(mh, HEX5, e);
	
endmodule
