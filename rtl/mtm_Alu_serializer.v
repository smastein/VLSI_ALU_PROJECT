module mtm_Alu_serializer (
    input wire clk,
	input wire rst_n,
	input wire [31:0] C,
	input wire [7:0] CTL_out,
	output reg sout
) ;

localparam 	IDLE = 3'b000,
			FIRST_BIT = 3'b001,
			SELEC = 3'b010,
			TRANSFER_DATA = 3'b011,
			TRANSFER_CMD = 3'b100,
			END = 3'b101;
			
reg [2:0] state;
reg [1:0] packets_dest;
reg [1:0] packets_avail;
reg [5:0] bit_counter;

initial begin

  state = IDLE;
  packets_dest = 0;
  bit_counter = 0;
  packets_avail = 0;
end

always @(posedge clk) begin
	if (!rst_n) begin
		state = IDLE;
		bit_counter = 0;
		packets_avail = 0;
		packets_dest = 0;
		sout = 1;
	end
	else begin
		$display("CTL: %b", CTL_out);
		case(state)
			IDLE: begin
				if(CTL_out[7] == 0) begin
					packets_dest = 5;
					packets_avail = 0;
					bit_counter = 0;
					state = FIRST_BIT;
				end
				else if(CTL_out[7:0] == 8'b10010011 || CTL_out[7:0] == 8'b11001001 || CTL_out[7:0] == 8'b10100101) begin //wrong OP , wrong DATA, wrong crc
				//	$display("START_CMD");
					packets_dest = 1;
					packets_avail = 0;
					bit_counter = 0;
					state = FIRST_BIT;
				end
				else
					sout =1;
			end
			FIRST_BIT: begin
			//	$display("FIRST");
				sout = 0;
				state = SELEC;
			end
			SELEC: begin
			//	$display("SELEC");
				if(packets_dest == 5) begin
					state = TRANSFER_DATA;
					sout = 0;
				end
				else if(packets_dest==1 ) begin
					state = TRANSFER_CMD;
					sout = 1;
				end
			end
			TRANSFER_DATA: begin
			//	$display("DATA");
				if(bit_counter+1%8==0) begin
					sout = C[31-bit_counter];
					packets_avail = packets_avail + 1;
					bit_counter = bit_counter + 1;
					state = END;
				end
				else begin
					sout = C[31-bit_counter];
					bit_counter = bit_counter + 1;
				end
			end
			TRANSFER_CMD: begin
			//	$display("CMD");
				if((bit_counter+1)%8==0) begin
					sout = CTL_out[7-bit_counter];
					packets_avail = packets_avail + 1;
					bit_counter = bit_counter + 1;
					state = END;
				end
				else begin
					sout = CTL_out[7-bit_counter];
					bit_counter = bit_counter + 1;
				end
			end
			END: begin
			//	$display("END");
				sout = 1;
				if(packets_dest == 5) begin
					if(5-packets_avail ==1) begin
						state = FIRST_BIT;
						packets_dest =1;
						packets_avail = 0;
						bit_counter = 0;
					end
					else begin
						state = FIRST_BIT;
					end
				end
				else if(packets_dest ==1) begin
					if(1-packets_avail ==0) begin
						state = IDLE;
					end
					else begin
						state = FIRST_BIT;
					end
				end
				else begin
					state = IDLE;
				end
			end
		endcase
		//$display("sout: %b", sout);
	end

end

endmodule
