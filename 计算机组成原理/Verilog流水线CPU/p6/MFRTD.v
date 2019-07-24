`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:37:31 12/07/2017 
// Design Name: 
// Module Name:    MFRTD 
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
module MFRTD(
    input [31:0] D2,AO_M,MUX_WDOUT,pc4_E,
	 input [2:0] FRTD,
    output [31:0] MFRTDOUT 
	 );
	assign MFRTDOUT= FRTD==3? $signed(pc4_E)+4:
						  FRTD==2? AO_M:
						  FRTD==1? MUX_WDOUT:
											D2;

//M级到D级的转发，可转发ALU输出结果，和DM（综合）输出结果
endmodule
