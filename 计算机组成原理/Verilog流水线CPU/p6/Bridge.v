`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:38:02 01/01/2018 
// Design Name: 
// Module Name:    Bridge 
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
module Bridge(
	
	input [31:0] PrWD,DEV0_RD,DEV1_RD,
	output [31:0] DEV_WD,PrRD,
	
	input [31:2] PrAddr,
	output [3:2] DEV_Addr,
	
	input [3:0] PrBE,
	output [3:0] DEV_BE,
	
	input PrWe,IRQ0,IRQ1,
	output DEV_We,
	
	output [7:2] HWInt
	
    );
	 
	 assign DEV_WD=PrWD;
	 
	 assign PrRD=({PrAddr,1'b0,1'b0}>=32'h00007f00 && {PrAddr,1'b0,1'b0}<=32'h00007f0b)? DEV0_RD:DEV1_RD;
	 
	 assign DEV_Addr=PrAddr[3:2];
	 
	 assign DEV_BE=PrBE;
	 
	 assign DEV_We=PrWe;
	 
	 assign HWInt={4'b0000,IRQ1,IRQ0};


endmodule
