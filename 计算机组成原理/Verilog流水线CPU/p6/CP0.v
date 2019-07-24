`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:59:28 01/01/2018 
// Design Name: 
// Module Name:    CP0 
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
module CP0(
	input [4:0] A,
	input [31:0] Din,PC,
	input [6:2] EXCCode,
	input [5:0] HWInt,
	input We,EXLClr,clk,clr,bd,
	output reg [31:0] EPC,
	output [31:0] DOUT,
	output IntReq
    );
	
	wire EXLSet,Int;
	
	reg [31:0] PRID;
	
	reg [15:10] im;
	reg exl,ie;
	
	reg BD;////分支延迟
	reg [15:10] hwint_pend;
	reg [6:2] ExcCode;/////告诉哪里发生了异常
	
	assign DOUT= A==15? PRID:
			       A==12? {16'b0, im, 8'b0, exl, ie}:
					 A==13? {BD,15'b0, hwint_pend,3'b0,ExcCode,1'b0}:
					 A==14? EPC:
					 0;
	
	assign Int=	|(HWInt & im) & ie & !(exl);
	assign EXLSet=(EXCCode!=5'b0) & !exl;///异常信号
	assign IntReq=(|(HWInt & im) & ie & !(exl))|EXLSet;
	
	initial begin
		EPC=0;
		PRID=0;
		im=0;
		exl=0;
		ie=0;
		BD=0;
		hwint_pend=0;
		ExcCode=0;
	end
	
	always @(posedge clk)begin
		if(clr)begin
			EPC<=0;
			PRID<=0;
			im<=0;
			exl<=0;
			ie<=0;
			BD<=0;
			hwint_pend<=0;
			ExcCode<=0;
		end
		
		else begin
			if(IntReq)begin
				if(bd)begin
					EPC<=PC-8;
				end
	
				else begin
					EPC<=PC-4;
				end
				
				if(Int)begin
					ExcCode<=0;
				end
				
				else begin
					ExcCode<=EXCCode;
				end
				
				exl<=1;
				hwint_pend<=HWInt;
				BD<=bd;
			end
			
			if(EXLClr==1)begin
				exl<=0;
			end
			
			if(We)begin
				case(A)
					12:begin
						{im,exl,ie}<={Din[15:10],Din[1],Din[0]};
					end
					
					14:begin
						EPC<=Din;
					end
				endcase
			end
		end
	end
	
	 


endmodule
