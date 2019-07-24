`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:27:33 12/07/2017 
// Design Name: 
// Module Name:    RF 
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
module RF(
	input [4:0] A1,A2,A3,
	input [31:0] WD,pc4_W,
	output [31:0] D1,D2,
	input clr,clk,RegWrite
    );
	reg [31:0] GRF [31:0];
	integer i;
	
	initial begin
		for(i=0;i<=31;i=i+1)begin
			GRF[i]=0;
		end
	end
	
	assign D1=GRF[A1];
	assign D2=GRF[A2];
	
	always @(posedge clk)begin
		if(clr)begin
			for(i=0;i<=31;i=i+1)begin
				GRF[i]<=0;
			end
		end
		
		else if(A3!=5'b00000&&RegWrite)begin
			GRF[A3]<=WD;
			$display("%d@%h: $%d <= %h", $time, (pc4_W-4), A3,WD);
		end
	end
	//寄存器堆，用法与单周期类似

endmodule
