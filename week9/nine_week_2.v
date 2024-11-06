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
// CREATED		"Wed Oct 30 15:17:56 2024"

module nine_week_2(
	clk,
	rst,
	Din0,
	Din1,
	Din2,
	Din3,
	Din4,
	Din5,
	Din7,
	Din8,
	Din9,
	Din6,
	a,
	b,
	c,
	d,
	e,
	f,
	g,
	com1,
	com2,
	com3,
	com4,
	com5,
	com6,
	com7,
	com8
);


input wire	clk;
input wire	rst;
input wire	Din0;
input wire	Din1;
input wire	Din2;
input wire	Din3;
input wire	Din4;
input wire	Din5;
input wire	Din7;
input wire	Din8;
input wire	Din9;
input wire	Din6;
output wire	a;
output wire	b;
output wire	c;
output wire	d;
output wire	e;
output wire	f;
output wire	g;
output wire	com1;
output wire	com2;
output wire	com3;
output wire	com4;
output wire	com5;
output wire	com6;
output wire	com7;
output wire	com8;

wire	[3:0] reg_line;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_42;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	[3:0] SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_43;
wire	[3:0] SYNTHESIZED_WIRE_44;
wire	[3:0] SYNTHESIZED_WIRE_45;
wire	[3:0] SYNTHESIZED_WIRE_46;
wire	SYNTHESIZED_WIRE_47;
wire	SYNTHESIZED_WIRE_48;
wire	SYNTHESIZED_WIRE_20;
wire	SYNTHESIZED_WIRE_21;
wire	SYNTHESIZED_WIRE_23;
wire	SYNTHESIZED_WIRE_25;
wire	SYNTHESIZED_WIRE_28;
wire	SYNTHESIZED_WIRE_29;
wire	SYNTHESIZED_WIRE_30;
wire	SYNTHESIZED_WIRE_31;
wire	[3:0] SYNTHESIZED_WIRE_37;
wire	[3:0] SYNTHESIZED_WIRE_39;
wire	[3:0] SYNTHESIZED_WIRE_40;

assign	com5 = 1;
assign	com6 = 1;
assign	com7 = 1;
assign	com8 = 1;




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
	.b3(reg_line[3]),
	.b2(reg_line[2]),
	.b1(reg_line[1]),
	.b0(reg_line[0]));

assign	SYNTHESIZED_WIRE_3 = Din0 | Din2 | Din1 | Din3 | Din5 | Din4 | Din6 | Din7;


trigger	b2v_inst2(
	.Din(SYNTHESIZED_WIRE_0),
	.CLK(clk),
	.rst_n(SYNTHESIZED_WIRE_42),
	.Dout(SYNTHESIZED_WIRE_43));

assign	SYNTHESIZED_WIRE_2 = Din9 | Din8;

assign	SYNTHESIZED_WIRE_0 = SYNTHESIZED_WIRE_2 | SYNTHESIZED_WIRE_3;

assign	SYNTHESIZED_WIRE_42 =  ~rst;


b2seg_bus	b2v_inst23(
	.b_in(SYNTHESIZED_WIRE_4),
	.a(a),
	.b(b),
	.c(c),
	.d(d),
	.e(e),
	.f(f),
	.g(g));


four_bit_reg_ce	b2v_inst24(
	.ce(SYNTHESIZED_WIRE_43),
	.clk(clk),
	.rst_n(SYNTHESIZED_WIRE_42),
	.din(reg_line),
	.out(SYNTHESIZED_WIRE_44));


four_bit_reg_ce	b2v_inst25(
	.ce(SYNTHESIZED_WIRE_43),
	.clk(clk),
	.rst_n(SYNTHESIZED_WIRE_42),
	.din(SYNTHESIZED_WIRE_44),
	.out(SYNTHESIZED_WIRE_45));


four_bit_reg_ce	b2v_inst26(
	.ce(SYNTHESIZED_WIRE_43),
	.clk(clk),
	.rst_n(SYNTHESIZED_WIRE_42),
	.din(SYNTHESIZED_WIRE_45),
	.out(SYNTHESIZED_WIRE_46));


four_bit_reg_ce	b2v_inst27(
	.ce(SYNTHESIZED_WIRE_43),
	.clk(clk),
	.rst_n(SYNTHESIZED_WIRE_42),
	.din(SYNTHESIZED_WIRE_46),
	.out(SYNTHESIZED_WIRE_37));

assign	SYNTHESIZED_WIRE_20 =  ~SYNTHESIZED_WIRE_47;

assign	SYNTHESIZED_WIRE_21 =  ~SYNTHESIZED_WIRE_48;

assign	SYNTHESIZED_WIRE_23 =  ~SYNTHESIZED_WIRE_48;

assign	SYNTHESIZED_WIRE_25 =  ~SYNTHESIZED_WIRE_47;

assign	SYNTHESIZED_WIRE_28 = SYNTHESIZED_WIRE_20 & SYNTHESIZED_WIRE_21;

assign	SYNTHESIZED_WIRE_29 = SYNTHESIZED_WIRE_47 & SYNTHESIZED_WIRE_23;

assign	SYNTHESIZED_WIRE_30 = SYNTHESIZED_WIRE_48 & SYNTHESIZED_WIRE_25;

assign	SYNTHESIZED_WIRE_31 = SYNTHESIZED_WIRE_48 & SYNTHESIZED_WIRE_47;

assign	com1 =  ~SYNTHESIZED_WIRE_28;

assign	com2 =  ~SYNTHESIZED_WIRE_29;

assign	com3 =  ~SYNTHESIZED_WIRE_30;

assign	com4 =  ~SYNTHESIZED_WIRE_31;



mx_4bit_2x1	b2v_inst42(
	.ce(SYNTHESIZED_WIRE_47),
	.s0(SYNTHESIZED_WIRE_44),
	.s1(SYNTHESIZED_WIRE_45),
	.m_out(SYNTHESIZED_WIRE_39));


mx_4bit_2x1	b2v_inst43(
	.ce(SYNTHESIZED_WIRE_47),
	.s0(SYNTHESIZED_WIRE_46),
	.s1(SYNTHESIZED_WIRE_37),
	.m_out(SYNTHESIZED_WIRE_40));


mx_4bit_2x1	b2v_inst44(
	.ce(SYNTHESIZED_WIRE_48),
	.s0(SYNTHESIZED_WIRE_39),
	.s1(SYNTHESIZED_WIRE_40),
	.m_out(SYNTHESIZED_WIRE_4));


count_4	b2v_inst9(
	.clk(clk),
	.rst_n(SYNTHESIZED_WIRE_42),
	.Q0(SYNTHESIZED_WIRE_47),
	.Q1(SYNTHESIZED_WIRE_48));


endmodule
