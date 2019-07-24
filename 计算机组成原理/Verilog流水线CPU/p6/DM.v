`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:35:51 12/08/2017 
// Design Name: 
// Module Name:    DM 
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
module DM(
	input [31:0] AO_M,MFRTMOUT,pc4_M,
	output [31:0] DR,
	input clk,clr,IntReq,
	input [1:0] MemWrite,
	input [3:0] besle
    );
	 
	reg [31:0] Dm [4095:0];
	integer i;
	wire [31:0] A;	
	 
	initial begin
		for(i=0;i<=4095;i=i+1)begin
			Dm[i]=0;
		end
	end
	
	assign DR=Dm[AO_M[13:2]];
	assign A={AO_M[31:2],2'b00};
	
	
	always @(posedge clk)begin
		if(clr)begin
			for(i=0;i<=4095;i=i+1)begin
				Dm[i]<=0;
			end
		end
		
		else if(!IntReq)begin 
		
		case(MemWrite)
			0:begin
			end
			1:begin
				Dm[AO_M[13:2]]<=MFRTMOUT;
				$display("%d@%h: *%h <= %h",$time,(pc4_M-4),AO_M,MFRTMOUT);
			end
			
			2:begin///°ë×Ö
				case(AO_M[1:0])
					0:begin
						Dm[AO_M[13:2]]<={Dm[AO_M[13:2]][31:16],MFRTMOUT[15:0]};
						$display("%d@%h: *%h <= %h", $time,(pc4_M-4), A,{Dm[AO_M[13:2]][31:16],MFRTMOUT[15:0]});
					end
					2:begin
						Dm[AO_M[13:2]]<={MFRTMOUT[15:0],Dm[AO_M[13:2]][15:0]};
						$display("%d@%h: *%h <= %h", $time,(pc4_M-4),A,{MFRTMOUT[15:0],Dm[AO_M[13:2]][15:0]});
					end
				endcase
			end
			
			3:begin////×Ö½Ú
				case(AO_M[1:0])
					0:begin
						Dm[AO_M[13:2]]<={Dm[AO_M[13:2]][31:8],MFRTMOUT[7:0]};
						$display("%d@%h: *%h <= %h", $time, (pc4_M-4),A,{Dm[AO_M[13:2]][31:8],MFRTMOUT[7:0]});
					end
					1:begin
						Dm[AO_M[13:2]]<={Dm[AO_M[13:2]][31:16],MFRTMOUT[7:0],Dm[AO_M[13:2]][7:0]};
						$display("%d@%h: *%h <= %h", $time, (pc4_M-4), A,{Dm[AO_M[13:2]][31:16],MFRTMOUT[7:0],Dm[AO_M[13:2]][7:0]});
					end
					2:begin
						Dm[AO_M[13:2]]<={Dm[AO_M[13:2]][31:24],MFRTMOUT[7:0],Dm[AO_M[13:2]][15:0]};
						$display("%d@%h: *%h <= %h", $time, (pc4_M-4),A,{Dm[AO_M[13:2]][31:24],MFRTMOUT[7:0],Dm[AO_M[13:2]][15:0]});
					end
					3:begin
						Dm[AO_M[13:2]]<={MFRTMOUT[7:0],Dm[AO_M[13:2]][23:0]};
						$display("%d@%h: *%h <= %h", $time, (pc4_M-4),A,{MFRTMOUT[7:0],Dm[AO_M[13:2]][23:0]});
					end
				endcase
			end
			
		endcase
		end
	end

endmodule
