`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:10:09 12/07/2017 
// Design Name: 
// Module Name:    MFRTE 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module MFRTE(
   input [31:0] D2_E,AO_M,MUX_WDOUT,
	input [2:0] FRTE,
   output [31:0] MFRTEOUT 
	 );
	assign MFRTEOUT= FRTE==2? AO_M:
						  FRTE==1? MUX_WDOUT:
											  D2_E;

////M级到E级的转发，可转发ALU输出结果，和DM（综合）输出结果，且第一端口输出的值是从ALU B口选择器接到的值
endmodule
