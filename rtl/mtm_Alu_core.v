module mtm_Alu_core (
    input wire clk,
    input wire rst_n,
    input wire [31:0] A,
    input wire [31:0] B,
    input wire [7:0] CTL_in,
    output reg [31:0] C,
    output reg [7:0] CTL_out
) ;

// CTL( {1'b0, OP, CRC} ) 
wire [2:0] OP;
wire [3:0] CRC;

assign OP = CTL_in[6:4];
assign CRC = CTL_in[3:0];

reg Carry,
	Overflow, 
	Zero, 
	Negative;

localparam 	AND = 3'b000,
			OR = 3'b001,
			ADD = 3'b100,
			SUB = 3'b101;

			
initial begin
  Carry = 0; 
  Overflow = 0; 
  Zero = 0; 
  Negative = 0;
  C = 0;
  CTL_out = 8'b11111111;
end

always @(posedge clk) begin
	if (!rst_n) begin
		Carry = 0; 
		Overflow = 0; 
		Zero = 0; 
		Negative = 0;
		CTL_out = 8'b11111111;
		C = 0;
	end
	else begin
		if(CTL_in[7] == 0) begin
			
			#1case(OP)
				AND: begin						//CTL( {1'b0, FLAGS, CRC)
					C = A & B;					//FLAGS = { Carry, Overflow, Zero, Negative } - 4 bits of ALU flags
					Carry = 0; 
					Overflow = 0; 
					Zero = 0; 
					Negative = 0;
					CTL_out = {1'b0,Carry,Overflow,Zero,Negative,nextCRC3_D36({C,1'b0,Carry,Overflow,Zero,Negative}, 3'b000)};				//CRC is 3-bit CRC checksum calculated for 37 bits of { C, 1'b0, FLAGS },
				end							
				OR: begin
					C = A | B;
					Carry = 0; 
					Overflow = 0; 
					Zero = 0; 
					Negative = 0;
					CTL_out = {1'b0,Carry,Overflow,Zero,Negative,nextCRC3_D36({C,1'b0,Carry,Overflow,Zero,Negative}, 3'b000)};
				end
				ADD: begin
					{Carry,C} = A+B;
					Zero = ~(|C);
					Overflow = ({Carry,C[31]} == 2'b01);
					Negative = (C[31] == 1);
					CTL_out = {1'b0,Carry,Overflow,Zero,Negative,nextCRC3_D36({C,1'b0,Carry,Overflow,Zero,Negative}, 3'b000)};
				end
				SUB: begin
					{Carry,C} = A-B;
					Zero = ~(|C);
					Overflow = ({Carry,C[31]} == 2'b01);
					Negative = (A < B);
					CTL_out = {1'b0,Carry,Overflow,Zero,Negative,nextCRC3_D36({C,1'b0,Carry,Overflow,Zero,Negative}, 3'b000)};
				end
				default: begin
					CTL_out = 8'b10010011;
				end
			endcase
			
		end
		else if(CTL_in == 8'b10100101 || CTL_in == 8'b11001001) begin
			CTL_out = CTL_in;
			//C = 32'b11111111111111111111111111111111;
			//$display("CTL_core: %b", CTL_out);
		end
		else begin
			Carry = 0;
			Overflow =0;
			Zero = 0;
			Negative = 0;
			CTL_out = 8'b11111111;
			
			
		end
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
//   * polynomial: x^3 + x^1 + 1
//   * data width: 36
//
// Info : tools@easics.be
//        http://www.easics.com
////////////////////////////////////////////////////////////////////////////////

  // polynomial: x^3 + x^1 + 1
  // data width: 36
  // convention: the first serial bit is D[35]
    function [2:0] nextCRC3_D36;  
        input [35:0] Data;
        input [2:0] crc;
        reg [35:0] d;
        reg [2:0] c;
        reg [2:0] newcrc;
    begin
        d = Data;
        c = crc;

    newcrc[0] = d[35] ^ d[32] ^ d[31] ^ d[30] ^ d[28] ^ d[25] ^ d[24] ^ d[23] ^ d[21] ^ d[18] ^ d[17] ^ d[16] ^ d[14] ^ d[11] ^ d[10] ^ d[9] ^ d[7] ^ d[4] ^ d[3] ^ d[2] ^ d[0] ^ c[2];
    newcrc[1] = d[35] ^ d[33] ^ d[30] ^ d[29] ^ d[28] ^ d[26] ^ d[23] ^ d[22] ^ d[21] ^ d[19] ^ d[16] ^ d[15] ^ d[14] ^ d[12] ^ d[9] ^ d[8] ^ d[7] ^ d[5] ^ d[2] ^ d[1] ^ d[0] ^ c[0] ^ c[2];
    newcrc[2] = d[34] ^ d[31] ^ d[30] ^ d[29] ^ d[27] ^ d[24] ^ d[23] ^ d[22] ^ d[20] ^ d[17] ^ d[16] ^ d[15] ^ d[13] ^ d[10] ^ d[9] ^ d[8] ^ d[6] ^ d[3] ^ d[2] ^ d[1] ^ c[1];
    nextCRC3_D36 = newcrc;
  end
  endfunction

endmodule
