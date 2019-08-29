/******************************************************************************
 * (C) Copyright 2019 AGH UST All Rights Reserved
 *
 * MODULE:    mtm_Alu tb
 * PROJECT:   PPCU_VLSI
 * AUTHORS:
 * DATE:
 * ------------------------------------------------------------------------------
 * This module (TB) provides test patterns for the ALU, reads data from the ALU and 
 * verifies if the operation result is correct.
 * 
 * The TB must include:
 * - task send_byte to send a CMD or CTL command to the ALU						OK
 * - task send_calculation_data that will send 9 bytes to the ALU for given		OK
 *   operands and operation
 * - procedural block for capturing the input data from the ALU					OK
 * - task compare to compare the result from the ALU and the expected data. 	OK
 * 
 * The test vectors must provide at least:
 * - sending max (0xFFFF) and min (0) data with all the ALU operations (AND OR, ADD,SUB)
 * - sending 1000 random valid data															OK
 * - sending invalid data (wrong number of DATA packets before CTL packet)					OK
 * - sending data with CRC error															OK
 * 
 * The testbench should print final PASS/FAIL text information.
 */

module mtm_Alu_tb (
    output reg clk,
    output reg rst_n,
    output reg sin,
    output reg sout
) ;

	integer i,j,k, iter, count, l;
	reg [31:0] 	A, 
				B;
	
	reg [7:0] CTL;
	reg [2:0] OP;
	reg [3:0] CRC;
	reg [1:0] done;
	reg [54:0] 	out, 
				out_nxt;
	
	localparam  AND = 3'b000,
				OR = 3'b001,
				ADD = 3'b100,
				SUB = 3'b101;

				
	initial begin
		clk = 0; 
		i = 0; 
		j = 0; 
		k = 0; 
		l = 0;
		count = 0;
		done =0;
		iter = 1;
		rst_n = 1;
		sin = 1;
		OP = 3'b000;
		CRC = 4'b0000;
		
		$display("Send valid data with crc error");
		A = 4;
		B = 2;
		CTL = 8'b00001111;
		send_calculation_data({B,A,CTL});
		if(out[54:47] == 8'b10100101) begin
			$display("PASS");
		end
		else begin
			$display("FAIL");
		end
		
		$display("Send invalid data (wrong number of DATA packets before CTL packet)");
		send_byte(8'b01010101,0);
		send_byte(8'b00001111,0);
		send_byte(8'b01010000,1);
		if(out[54:47] == 8'b11001001) begin
			$display("PASS");
		end
		else begin
			$display("FAIL");
		end
	
		$display("Send 1000 random valid data");
		while(count <1000) begin
			if(count%4 == 0) begin
				OP = AND;
			end
			if(count%4 == 1) begin
				OP = OR;
			end
			if(count%4 == 2) begin
				OP = ADD
			end
			if(count%4 == 3) begin
				OP = SUB;
			end
			count = count + 1;
			CRC = nextCRC4_D68({B, A, 1'b1, OP},4'b0000);
			A = $urandom;
			B = $urandom;
			CTL = {1'b0, OP, CRC};
			send_calculation_data({B,A,CTL});
			if(compare({out[52:45],out[41:34],out[30:23],out[19:12], out[8:1]},A,B,CTL)) begin
				done = 1;
			end
			else begin 
				done = 0;
			end
		end
		if(done == 1) begin
			$display("PASS");
		end
		else begin
			$display("FAIL");
		end
		
		$display("Send max (0xFFFF) and min (0) data with all the ALU operations (AND OR, ADD,SUB)");
		Am = 32'b11111111111111111111111111111111; 
		Bm = 32'b11111111111111111111111111111111;
		A = 32'b00000000000000000000000000000000;
		B = 32'b00000000000000000000000000000000;
		for(l=0; l<4; l = l+1) begin
			if(l ==0) begin
				OP = AND;
			end
			else if(l ==1) begin
				OP = OR;
			end
			else if(l ==2) begin
				OP = ADD;
			end
			else if(l ==3) begin
				OP = SUB;
			end
			
			//1
			CRC = nextCRC4_D68({Bm, Am, 1'b1, OP},4'b0000);
			CTL = {1'b0, OP, CRC};
			send_calculation_data({Bm,Am,CTL});
			xx = compare({out[52:45],out[41:34],out[30:23],out[19:12], out[8:1]},Am,Bm,CTL)
			
			//2
			CRC = nextCRC4_D68({B, A, 1'b1, OP},4'b0000);
			CTL = {1'b0, OP, CRC};
			send_calculation_data({B,A,CTL});
			mm = compare({out[52:45],out[41:34],out[30:23],out[19:12], out[8:1]},A,B,CTL)
			
			//3
			CRC = nextCRC4_D68({B, Am, 1'b1, OP},4'b0000);
			CTL = {1'b0, OP, CRC};
			send_calculation_data({B,Am,CTL});
			xm = compare({out[52:45],out[41:34],out[30:23],out[19:12], out[8:1]},Am,B,CTL)
			
			//4
			CRC = nextCRC4_D68({Bm, A, 1'b1, OP},4'b0000);
			CTL = {1'b0, OP, CRC};
			send_calculation_data({Bm,A,CTL});
			mx = compare({out[52:45],out[41:34],out[30:23],out[19:12], out[8:1]},A,Bm,CTL)
			
			if(xx == mm == xm == mx == 1) begin
				done =1;
			end
			else begin
				done =0;
			end
		end
		if(done == 1) begin
			$display("PASS");
		end
		else begin
			$display("FAIL");
		end
	end
	
	always @(*) begin
		if(sout == 0 && k == 0) begin
			iter = 55;
			out_nxt[iter-1] = sout;
		end
		else if(k > 1) begin
			iter = k - 1;
			out_nxt[iter-1] = sout;
		end
		else if(k == 1) begin
			iter = 0;
		end
		  
	end

	always @(posedge clk) begin
		out = out_nxt;
		k = iter;
	end

	always begin
		clk =  ! clk;
	end
	
	task send_byte 
		input [7:0] data;
		input [1:0] CMD; //=0 - Data, =1 - CTL
		begin
			for(i=0; i<11; i= i+1) begin
				@(posedge clk); begin
					if(i == 0) begin
						sin = 0;
					end
					else if(i == 10) begin
						sin = 1;
					end
					else if(i == 1 && CMD == 0) begin
						sin = 0;
					end
					else if(i == 1 && CMD == 1) begin
						sin = 1;
					end
					else begin
						sin = data[i-2];
					end
				end
			end
		end
	endtask

	task send_calculation_data
		input [71:0] data;
		begin
			for(j=0; j<9; j=j+1) begin
				@(posedge clk); begin
					if (j == 0) begin
						send_byte(byte[31:24],0);
					end
					else if (j == 1) begin
						send_byte(byte[23:16],0);
					end
					else if (j == 2) begin
						send_byte(byte[15:8],0);
					end
					else if (j == 3) begin
					  send_byte(byte[7:0],0);
					end
					else if (j == 4) begin
					  send_byte(byte[63:56],0);
					end
					else if (j == 5) begin
					  send_byte(byte[55:48],0);
					end
					else if (j == 6) begin
					  send_byte(byte[47:40],0);
					end
					else if (j == 7) begin
					  send_byte(byte[39:32],0);
					end
					else if (j == 8) begin
					  send_byte(byte[71:64],1);
					end
				end
			end
		end
	endtask

	task compare
		input [39:0] result;
		input [31:0] A;
		input [31:0] B;
		input [7:0] CTL;
		reg [32:0] expected;
		output solution;
		begin
			case(CTL[6:4])
				AND: begin
					expected = A & B;
				end
				OR: begin
					expected = A | B;
				end
				ADD: begin
					expected = A + B;
				end
				SUB: begin
					expected = A - B;
				end
			endcase
			
			solution = expected == {result[6],rsult[39:8]} // {CARRY, A+B}
		end
	endtask

endmodule

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

