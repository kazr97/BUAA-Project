`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:19:19 12/07/2017 
// Design Name: 
// Module Name:    MFRSD 
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
module MFRSD(
	input [31:0] D1,AO_M,MUX_WDOUT,pc4_E,
	input [2:0] FRSD,
   output [31:0] MFRSDOUT 
	 );
	assign MFRSDOUT= FRSD==3? $signed(pc4_E)+4:
						  FRSD==2? AO_M:
						  FRSD==1? MUX_WDOUT:
										D1;

//M����D����ת������ת��ALU����������DM���ۺϣ�������
endmodule
