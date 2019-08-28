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
 * - task send_byte to send a CMD or CTL command to the ALU
 * - task send_calculation_data that will send 9 bytes to the ALU for given
 *   operands and operation
 * - procedural block for capturing the input data from the ALU
 * - task compare to compare the result from the ALU and the expected data.
 * 
 * The test vectors must provide at least:
 * - sending max (0xFFFF) and min (0) data with all the ALU operations (AND OR, ADD,SUB)
 * - sending 1000 random valid data
 * - sending invalid data (wrong number of DATA packets before CTL packet)
 * - sending data with CRC error
 * 
 * The testbench should print final PASS/FAIL text information.
 */

module mtm_Alu_tb (
    output reg clk,
    output reg rst_n,
    output reg sin,
    output reg sout
) ;

	integer i,j;
	localparam  AND = 3'b000,
				OR = 3'b001,
				ADD = 3'b100,
				SUB = 3'b101;

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
