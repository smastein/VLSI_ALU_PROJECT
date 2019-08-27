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
					A = packet_AB[63:32];
					B = packet_AB[31:0];
					CTL = packet_CTL;
					address = END;
				end
				else if(CTL_check>1) begin
					address = ERROR;
				end
				else if(bit_counter>10) begin
					address = ERROR;
				end
				else if(bit_counter=0 && sin != 0) begin
					address = ERROR;
				end
				else if(bit_counter = 10 && sin != 1) begin
					address = ERROR;
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
		
	end
end

endmodule
