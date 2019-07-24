`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:07:03 12/10/2017 
// Design Name: 
// Module Name:    MFRTM 
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
module MFRTM(
	input [31:0] D2_M,AO_M,MUX_WDOUT,
	input [2:0] FRTM,
   output [31:0] MFRTMOUT 
	 );
	assign MFRTMOUT= FRTM==1? MUX_WDOUT:
										 D2_M;


endmodule
