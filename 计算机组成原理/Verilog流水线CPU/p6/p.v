`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:52:14 01/03/2018 
// Design Name: 
// Module Name:    p 
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
module p(
	input [31:0] IR,AO_M,pc,
	output [4:0] ExcCode,
	input WA,over,WAPC
    );
	 
	reg AdEL,AdES,Ov;
	
	initial begin
		AdEL=0;
		AdES=0;
		Ov=0;
	end

	
	always @ * begin
		if(WAPC==1)begin
			AdEL<=1;
		end
		else begin
			AdEL<=0;
		end
		
		
		case(IR[31:26])
			6'b100011:begin//lw
				if(!(AO_M>=0&&AO_M<=32'h2ffc || AO_M>=32'h7f00&&AO_M<=32'h00007f0b || AO_M>=32'h7f10&&AO_M<=32'h00007f1b) || |(AO_M[1:0])!=0 )begin
					AdEL<=1;
				end
				else if(over)begin
					AdEL<=1;
				end
				else begin
					AdEL<=0;
				end
			end
			
			6'b100001:begin//lh
				if(!(AO_M>=0&&AO_M<=32'h2ffc) || (AO_M[0])==1 )begin
					AdEL<=1;
				end
				else if(over)begin
					AdEL<=1;
				end
				else begin
					AdEL<=0;
				end
			end
			
			6'b100101:begin///lhu
				if(!(AO_M>=0&&AO_M<=32'h2ffc) || (AO_M[0])==1 )begin
					AdEL<=1;
				end
				else if(over)begin
					AdEL<=1;
				end
				else begin
					AdEL<=0;
				end
			end
			
			6'b100000:begin/////lb
				if(!(AO_M>=0&&AO_M<=32'h2ffc))begin
					AdEL<=1;
				end
				else if(over)begin
					AdEL<=1;
				end
				else begin
					AdEL<=0;
				end
			end
			
			6'b100100:begin///lbu
				if(!(AO_M>=0&&AO_M<=32'h2ffc))begin
					AdEL<=1;
				end
				else if(over)begin
					AdEL<=1;
				end
				else begin
					AdEL<=0;
				end
			end
			
			6'b101011:begin////sw
				if(!(AO_M>=0&&AO_M<=32'h2ffc || AO_M>=32'h7f00&&AO_M<=32'h00007f0b || AO_M>=32'h7f10&&AO_M<=32'h00007f1b) || |(AO_M[1:0])!=0 || !(AO_M>=0&&AO_M<=32'h2ffc)&& AO_M[3:2]!=0&&AO_M[3:2]!=1 )begin
					AdES<=1;
				end
				else if(over)begin
					AdEL<=1;
				end
				else begin
					AdES<=0;
				end
			end
			
			6'b100101:begin////sh
				if(!(AO_M>=0&&AO_M<=32'h2ffc) || (AO_M[0])==1)begin
						AdES<=1;
				end
				else if(over)begin
					AdEL<=1;
				end
				else begin
					AdES<=0;
				end
			end
			
			6'b101000:begin////sb
				if(!(AO_M>=0&&AO_M<=32'h2ffc))begin
						AdES<=1;
				end
				else if(over)begin
					AdEL<=1;
				end
				else begin
					AdES<=0;
				end
			end
			
			6'b001000:begin
				if(over)begin
					Ov<=1;
				end
				else begin
					Ov<=0;
				end
			end
			
			6'b000000:begin
				case(IR[5:0])
					6'b100000:begin
						if(over)begin
							Ov<=1;
						end
						else begin
							Ov<=0;
						end
					end
					
					6'b100010:begin
						if(over)begin
							Ov<=1;
						end
						else begin
							Ov<=0;
						end
					end
				endcase
			end
					
					
			
			default begin
				AdEL<=0;
				AdES<=0;
				Ov<=0;
			end
			
			
		endcase
	end
	
	assign ExcCode = AdEL==1? 4:
						  WA==1? 10:
						  AdES==1? 5:
						  Ov==1? 12:0;
	
			

endmodule
