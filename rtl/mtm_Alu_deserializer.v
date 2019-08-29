module mtm_Alu_deserializer (
    input wire clk,
    input wire rst_n,
    input wire sin,
    output reg A,
	output reg B,
	output reg CTL
) ;

localparam 	IDLE = 3'b000,
			OPERATION = 3'b001,
			TRANSFER = 3'b010,
			ERROR = 3'b011,
			END = 3'b100;

localparam 	DATA = 1'b0,
			CMD = 1'b1;

reg [1:0] operation;
reg [2:0] address;
reg [1:0] CTL_check;
reg [3:0] bit_counter;
reg [3:0] packet_counter;
reg [63:0] packet_AB;
reg [7:0] packet_CTL;
//A -4 Packets , B - 4 packets, CTL - 1 packet = 9 packets = 99 bits 8*4*2 = 64/ 8

initial begin
  address = IDLE;
  bit_counter = 0;
  packet_counter = 0;
  CTL_check = 0;
  CTL = 8'b00000000;
  A = 32'b00000000000000000000000000000000;
  B = 32'b00000000000000000000000000000000;
  packet_AB = 64'b0000000000000000000000000000000000000000000000000000000000000000;
  packet_CTL = 8'b00000000;
end

always @(posedge clk) begin
	if (!rst_n) begin
		address = IDLE;
	end
	else begin
		case(address)
			IDLE: begin
				if(sin == 0) begin
					address = OPERATION;
					bit_counter = 1;
				end
				else begin
					address = IDLE;
				end
			end
			OPERATION: begin
				if( bit_counter == 1 && sin ==1) begin
					operation = CMD;
					bit_counter = 2;
					CTL_check = CTL_check + 1;
				end
				else if(bit_counter == 1 && sin ==0) begin
					operation = DATA;
					bit_counter =2;
				end
			end
			TRANSFER: begin
				if(packet_counter == 8) begin
					CRC = nextCRC4_D68({packet_AB[31:0],packet_AB[63:32],packet_CTL[6:4]}, 4'b0000);
					if(CRC == packet_CTL[3:0]) begin
						A = packet_AB[63:32];
						B = packet_AB[31:0];
						CTL = packet_CTL;
						address = END;
					end
					else begin
						address = ERROR;
						CTL = 8'b10100101;
					end
				end
				else if(CTL_check>1) begin
					address = ERROR;
					CTL = 8'b11001001;
				end
				else if(bit_counter>10) begin
					address = ERROR;
					CTL = 8'b11001001;
				end
				else if(bit_counter=0 && sin != 0) begin
					address = ERROR;
					CTL = 8'b11001001;
				end
				else if(bit_counter = 10 && sin != 1) begin
					address = ERROR;
					CTL = 8'b11001001;
				end
				else if(bit_counter == 0 && sin == 0) begin
					address = OPERATION;
					bit_counter = 1;
				end
				else if(bit_counter == 10 && sin == 1) begin
					address = TRANSFER;
					bit_counter = 0;
					packet_counter = packet_counter + 1;
					end
				else if(operation ==DATA) begin
					packet_AB = {packet_AB,sin};
					bit_counter = bit_counter + 1;
					address = TRANSFER;
				end
				else if(operation == CMD) begin
					packet_CTL = {packet_CTL,sin};
					bit_counter = bit_counter + 1;
					address = TRANSFER;
				end
				
			end
			ERROR: begin
				if(packet_counter != 8) begin
					if(bit_counter == 10) begin
						packet_counter = packet_counter + 1;
						bit_counter = 0;
					end
					else begin
						bit_counter = bit_counter+1;
					end
				end
				else begin
					address = IDLE;
					bit_counter = 0;
					packet_counter = 0;
					CTL_check =0;
				end
			end
			END: begin
				if(packet_counter != 8) begin
					if(bit_counter == 10) begin
						packet_counter = packet_counter + 1;
						bit_counter = 0;
					end
					else begin
						bit_counter = bit_counter+1;
					end
				end
				else begin
					address = IDLE;
					CTL = 8'b00000000;
					A = 32'b00000000000000000000000000000000;
					B = 32'b00000000000000000000000000000000;
					bit_counter = 0;
					packet_counter = 0;
					CTL_check =0;
				end
			end
		endcase
	end
	
end

	////////////////////////////////////////////////////////////////////////////////
// Copyright (C) 1999-2008 Easics NV.
// This source file may be used and distributed without restriction
// provided that this copyright statement is not removed from the file
// and that any derivative work contains the original copyright notice
// and the associated disclaimer.
//
// THIS SOURCE FILE IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS
// OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED
// WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
//
// Purpose : synthesizable CRC function
//   * polynomial: x^4 + x^1 + 1
//   * data width: 36
//
// Info : tools@easics.be
//        http://www.easics.com
////////////////////////////////////////////////////////////////////////////////
  // polynomial: x^4 + x^1 + 1
  // data width: 68
  // convention: the first serial bit is D[67]
  function [3:0] nextCRC4_D68;

    input [67:0] Data;
    input [3:0] crc;
    reg [67:0] d;
    reg [3:0] c;
    reg [3:0] newcrc;
  begin
    d = Data;
    c = crc;

    newcrc[0] = d[60] ^ d[56] ^ d[55] ^ d[54] ^ d[53] ^ d[51] ^ d[49] ^ d[48] ^ d[45] ^ d[41] ^ d[40] ^ d[39] ^ d[38] ^ d[36] ^ d[33] ^ d[32] ^ d[31] ^ d[30] ^ d[26] ^ d[25] ^ d[24] ^ d[23] ^ d[21] ^ d[19] ^ d[18] ^ d[15] ^ d[11] ^ d[10] ^ d[9] ^ d[8] ^ d[6] ^ d[4] ^ d[3] ^ d[0] ^ c[0] ^ c[2];
    newcrc[1] = d[60] ^ d[57] ^ d[53] ^ d[52] ^ d[51] ^ d[50] ^ d[48] ^ d[46] ^ d[45] ^ d[42] ^ d[38] ^ d[37] ^ d[36] ^ d[34] ^ d[30] ^ d[29] ^ d[27] ^ d[23] ^ d[22] ^ d[21] ^ d[20] ^ d[18] ^ d[16] ^ d[15] ^ d[12] ^ d[8] ^ d[7] ^ d[6] ^ d[5] ^ d[3] ^ d[1] ^ d[0] ^ c[1] ^ c[2] ^ c[3];
    newcrc[2] = d[58] ^ d[54] ^ d[53] ^ d[52] ^ d[51] ^ d[49] ^ d[47] ^ d[46] ^ d[43] ^ d[39] ^ d[38] ^ d[37] ^ d[36] ^ d[35] ^ d[31] ^ d[30] ^ d[29] ^ d[28] ^ d[24] ^ d[23] ^ d[22] ^ d[21] ^ d[19] ^ d[17] ^ d[16] ^ d[13] ^ d[9] ^ d[8] ^ d[7] ^ d[6] ^ d[4] ^ d[2] ^ d[1] ^ c[0] ^ c[2] ^ c[3];
    newcrc[3] = d[59] ^ d[55] ^ d[54] ^ d[53] ^ d[52] ^ d[50] ^ d[48] ^ d[47] ^ d[44] ^ d[40] ^ d[39] ^ d[38] ^ d[37] ^ d[32] ^ d[31] ^ d[30] ^ d[29] ^ d[25] ^ d[24] ^ d[23] ^ d[22] ^ d[20] ^ d[18] ^ d[17] ^ d[14] ^ d[10] ^ d[9] ^ d[8] ^ d[7] ^ d[5] ^ d[3] ^ d[2] ^ c[1] ^ c[3];
    nextCRC4_D68 = newcrc;
  end
  endfunction
  
endmodule
