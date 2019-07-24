`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:07:39 12/07/2017 
// Design Name: 
// Module Name:    MUX_ALU_B 
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
module MUX_ALU_B(
	input [31:0] A,B,
	input MUX_ALU_B_sle,
	output [31:0] MUX_ALU_B_OUT
    );
	assign MUX_ALU_B_OUT= MUX_ALU_B_sle==1? B:A;
	//ALU B口的选择器，选择是D2还是立即数
endmodule
