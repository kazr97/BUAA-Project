`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:09:56 12/07/2017 
// Design Name: 
// Module Name:    MFRSE 
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
module MFRSE(
	input [31:0] D1_E,AO_M,MUX_WDOUT,
	input [2:0] FRSE,
   output [31:0] MFRSEOUT 
	 );
	assign MFRSEOUT= FRSE==2? AO_M:
						  FRSE==1? MUX_WDOUT:
											  D1_E;
//M级到E级的转发，可转发ALU输出结果，和DM（综合）输出结果
endmodule
