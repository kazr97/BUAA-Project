`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:48:17 12/07/2017 
// Design Name: 
// Module Name:    EXT16_32 
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
module EXT16_32(
	input [15:0] i16,
	input EXTsle,
	output [31:0] EXTOUT
    );
	 
	assign EXTOUT= EXTsle==1? {{16{1'b0}},i16}:{{16{i16[15]}},i16};
	//16位-32位扩展器，用法与单周期类似

endmodule
