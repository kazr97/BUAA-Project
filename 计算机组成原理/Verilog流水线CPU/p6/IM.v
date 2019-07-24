`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:51:36 12/07/2017 
// Design Name: 
// Module Name:    IM 
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
module IM(
	input [31:0] pc,
	output [31:0] IFUOUT
    );
	reg [31:0] im [4095:0];
	integer i;
	wire [31:0] pc0;
	 
	initial begin
		for(i=0;i<=4095;i=i+1)begin
			im[i]=0;
		end
		$readmemh("code.txt",im);
		$readmemh("code_handler.txt",im,1120,2047);
	end
	
	assign pc0=pc-32'h00003000;
	assign IFUOUT=im[pc0[13:2]];
	
	
	//IM模块，用于一开始读取pc，输出指令
		


endmodule
