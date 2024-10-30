// Copyright (C) 2020  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and any partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details, at
// https://fpgasoftware.intel.com/eula.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"
// CREATED		"Wed Oct 30 15:15:41 2024"

module nine_week_1(
	Din0,
	Din1,
	Din2,
	Din3,
	Din4,
	Din5,
	Din6,
	Din7,
	Din8,
	Din9,
	a,
	b,
	c,
	d,
	e,
	f,
	g
);


input wire	Din0;
input wire	Din1;
input wire	Din2;
input wire	Din3;
input wire	Din4;
input wire	Din5;
input wire	Din6;
input wire	Din7;
input wire	Din8;
input wire	Din9;
output wire	a;
output wire	b;
output wire	c;
output wire	d;
output wire	e;
output wire	f;
output wire	g;

wire	[3:0] b_ALTERA_SYNTHESIZED;





d2b	b2v_inst(
	.d0(Din0),
	.d1(Din1),
	.d2(Din2),
	.d3(Din3),
	.d4(Din4),
	.d5(Din5),
	.d6(Din6),
	.d7(Din7),
	.d8(Din8),
	.d9(Din9),
	.b3(b_ALTERA_SYNTHESIZED[3]),
	.b2(b_ALTERA_SYNTHESIZED[2]),
	.b1(b_ALTERA_SYNTHESIZED[1]),
	.b0(b_ALTERA_SYNTHESIZED[0]));


b2seg_bus	b2v_inst2(
	.b_in(b_ALTERA_SYNTHESIZED),
	.a(a),
	.b(b),
	.c(c),
	.d(d),
	.e(e),
	.f(f),
	.g(g));


endmodule
