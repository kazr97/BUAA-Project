`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:03:48 12/19/2017 
// Design Name: 
// Module Name:    MULT 
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
module MULT(
	input [31:0] IR_E,MFRSEOUT,MUX_ALU_B_OUT,
	input start,clr,clk,IntReq,eret,
	output [31:0] MULTOUT,
	output reg busy,
	input [3:0] MULTsle
	
    );
	
	reg [63:0] prod;
	
	reg [31:0] IR_C,D1,D2;
	
	wire [3:0] MULTsle2;
	
	reg [3:0] counter;
	
	reg [31:0] hi,lo,hii,loo;
		
	control control_mult2(.op(IR_C[31:26]),.func(IR_C[5:0]),.MULTsle(MULTsle2));
	
	initial begin
		busy=0;
		IR_C=0;
		D1=0;
		D2=0;
		hi=0;
		lo=0;
		counter=0;
		prod=0;
	end
	
	assign MULTOUT= MULTsle==4? hi:
						 MULTsle==5? lo:0;
	
	always @ (posedge clk)begin
		if(clr)begin
			busy<=0;
			IR_C<=0;
			D1<=0;
			D2<=0;
			hi<=0;
			lo<=0;
			counter<=0;
			prod<=0;
			hii<=0;
			loo<=0;
		end
		
		if(eret)begin
			hi<=hii;
			lo<=loo;
		end
		
		if(IntReq)begin
			hii<=hi;
			loo<=lo;
		end
		
		else if(!(IntReq|eret))begin
				if(!busy)begin
					case(MULTsle)
					0:begin////���ų�
						if(start)begin//////////���start��Ч����busy��1���Ҹ�������
							busy<=1;
							IR_C<=IR_E;
							D1<=MFRSEOUT;
							D2<=MUX_ALU_B_OUT;
							counter<=0;
						end
					end
						
					1:begin////�޷��ų�
						if(start)begin//////////���start��Ч����busy��1���Ҹ�������
							busy<=1;
							IR_C<=IR_E;
							D1<=MFRSEOUT;
							D2<=MUX_ALU_B_OUT;
							counter<=0;
						end
					end
					
					2:begin////���ų�
						if(start)begin//////////���start��Ч����busy��1���Ҹ�������
							busy<=1;
							IR_C<=IR_E;
							D1<=MFRSEOUT;
							D2<=MUX_ALU_B_OUT;
							counter<=0;
						end
					end
							
					3:begin////�޷��ų�
						if(start)begin//////////���start��Ч����busy��1���Ҹ�������
							busy<=1;
							IR_C<=IR_E;
							D1<=MFRSEOUT;
							D2<=MUX_ALU_B_OUT;
							counter<=0;
						end
					end
					6:begin//дhi
						hi<=MFRSEOUT;
					end
					
					7:begin//дlo
						lo<=MFRSEOUT;
					end
					
				endcase
			end
			
			else begin
				case(MULTsle2)
					0:	if(counter<4)begin
							prod<=$signed(D1) * $signed(D2);
							counter<=counter+1;
						end
						
						else begin
							counter<=0;
							hi<=prod[63:32];
							lo<=prod[31:0];
							busy<=0;
						end////���ų�
						
					1:	if(counter<4)begin
							prod<=D1 * D2;
							counter<=counter+1;
						end
						
						else begin
							counter<=0;
							hi<=prod[63:32];
							lo<=prod[31:0];
							busy<=0;
						end////�޷��ų�
					
					2:	if(counter<9)begin
							if(D2!=0)begin	
								prod[31:0]<= $signed(D1) / $signed(D2);
								prod[63:32]<=$signed(D1) % $signed(D2);
							end
							counter<=counter+1;
						end
						
						else begin	
							counter<=0;
							if(D2!=0)begin
								hi<=prod[63:32];
								lo<=prod[31:0];
							end
							busy<=0;
						end////���ų�
							
					3:	if(counter<9)begin
							if(D2!=0)begin	
								prod[31:0]<=D1 / D2;
								prod[63:32]<=D1 % D2;
							end
							counter<=counter+1;
						end
						
						else begin
							counter<=0;
							if(D2!=0)begin	
								hi<=prod[63:32];
								lo<=prod[31:0];
							end
							busy<=0;
						end////�޷��ų�
				endcase
			end
		end
	end		
	 
endmodule
