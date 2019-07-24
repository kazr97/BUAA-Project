`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:52:09 12/07/2017 
// Design Name: 
// Module Name:    CMP 
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
module CMP(
	input [31:0] D1,D2,
	input [2:0] CMPsle,
	output reg CMPOUT
    );
	always @ *begin
		case(CMPsle)
			0:if(D1==D2)begin
					CMPOUT<=1;
				end
			  else begin
					CMPOUT<=0;
				end//beq
			1:if(D1!=D2)begin
					CMPOUT<=1;
				end
				else begin
					CMPOUT<=0;
				end//bne
			2:if($signed(D1)>=0)begin
					CMPOUT<=1;
				end
				else begin
					CMPOUT<=0;
				end//bgez
			3:if($signed(D1)<=0)begin
					CMPOUT<=1;
				end
				else begin
					CMPOUT<=0;
				end//blez
			4:if($signed(D1)>0)begin
					CMPOUT<=1;
				end
				else begin
					CMPOUT<=0;
				end//bgtz
			5:if($signed(D1)<0)begin
					CMPOUT<=1;
				end
				else begin
					CMPOUT<=0;
				end//bltz
		endcase
	end
	//用于两个数的比较

endmodule
