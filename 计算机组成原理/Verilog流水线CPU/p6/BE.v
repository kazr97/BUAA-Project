`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:23:57 12/18/2017 
// Design Name: 
// Module Name:    BE 
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
module BE(
	input [1:0] A,
	input [31:0] DR_W,
	output reg [31:0] BEOUT,
	input [3:0] kuo
    );
	always @ *begin
		case(kuo)
			0:begin//²»À©Õ¹
				BEOUT<=DR_W;
			end
			1:begin//ÎÞ·ûºÅ°ë×ÖÀ©Õ¹
				case(A)
					0:begin
						BEOUT<={{16{1'b0}},DR_W[15:0]};
					end
					2:begin
						BEOUT<={{16{1'b0}},DR_W[31:16]};
					end
				endcase
			end
			
			2:begin//·ûºÅ°ë×ÖÀ©Õ¹
				case(A)
					0:begin
						BEOUT<={{16{DR_W[15]}},DR_W[15:0]};
					end
					2:begin
						BEOUT<={{16{DR_W[31]}},DR_W[31:16]};
					end
				endcase
			end
			
			3:begin//ÎÞ·ûºÅ×Ö½ÚÀ©Õ¹
				case(A)
					0:begin
						BEOUT<={{24{1'b0}},DR_W[7:0]};
					end
					1:begin
						BEOUT<={{24{1'b0}},DR_W[15:8]};
					end
					2:begin
						BEOUT<={{24{1'b0}},DR_W[23:16]};
					end
					3:begin
						BEOUT<={{24{1'b0}},DR_W[31:24]};
					end
				endcase
			end

			4:begin//·ûºÅ×Ö½ÚÀ©Õ¹
				case(A)
					0:begin
						BEOUT<={{24{DR_W[7]}},DR_W[7:0]};
					end
					1:begin
						BEOUT<={{24{DR_W[15]}},DR_W[15:8]};
					end
					2:begin
						BEOUT<={{24{DR_W[23]}},DR_W[23:16]};
					end
					3:begin
						BEOUT<={{24{DR_W[31]}},DR_W[31:24]};
					end
				endcase
			end
		endcase
	end
	
			
			

endmodule
