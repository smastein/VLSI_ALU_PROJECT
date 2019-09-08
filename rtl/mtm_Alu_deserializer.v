module mtm_Alu_deserializer (
    input wire clk,
    input wire rst,
    input wire sin,
    output reg [31:0] A,
	output reg [31:0] B,
	output reg [7:0] CTL
) ;
	reg [3:0] CRC;
	reg [3:0]bit_counter;
	reg [10:0]data_a;
	reg [10:0]data_b;
	reg [10:0]data_ctl;
	reg [3:0] packet_counter;
	reg [1:0] error_data;
	reg [1:0] error;
	reg [1:0] stop;
	reg [31:0] A_nxt;
	reg [31:0] B_nxt;

	
	always @ (posedge clk) begin
		if (!rst) begin
			bit_counter = 11;
			packet_counter =0;
			error_data = 0;
			error = 0;
			stop = 0;
			data_a = 11'b11111111111;
			data_b = 11'b11111111111;
			data_ctl = 11'b11111111111;
			A_nxt= 32'b11111111111111111111111111111111;
			B_nxt = 32'b11111111111111111111111111111111;
		
		end 
		else begin
		if((!sin) || (bit_counter < 11)) begin
		//$display("sin_des: %b", sin);
		//$display("bit: %b", bit_counter);
			
			if(bit_counter == 11) begin
				bit_counter = 0;
			end
			if (error == 1) begin
				if(bit_counter >0) begin
					bit_counter = bit_counter -1;
				end
				else begin
          				CTL = 8'b11111111;
					error = 0;
					bit_counter = 11;
					packet_counter = 0;
				end
				
			end
			else if(stop == 1) begin
				if(bit_counter >0) begin
					bit_counter = bit_counter -1;
				end
				else begin
					CTL = 8'b11111111;
					stop = 0;
					bit_counter = 11;
					packet_counter = 0;
					data_a = 11'b11111111111;
					data_b = 11'b11111111111;
					data_ctl = 11'b11111111111;
					A_nxt= 32'b11111111111111111111111111111111;
					B_nxt = 32'b11111111111111111111111111111111;
					CTL = 8'b11111111;
					A= 32'b11111111111111111111111111111111;
					B = 32'b11111111111111111111111111111111;
				end
			end
			else if(bit_counter == 0 && sin ==1) begin
				error_data=1;
			end
			else if(bit_counter ==1 && packet_counter <8 && sin == 1) begin
				error_data =1;
			end
			else if(bit_counter ==1 && packet_counter ==8 && sin == 0) begin
				error_data =1;
			end
			else if(bit_counter ==10 && sin != 1) begin
				error_data =1;
			end
			else if(packet_counter <4) begin
				data_a[11-1-bit_counter] = sin;			
				bit_counter = bit_counter + 1;
				if (bit_counter == 11) begin
					packet_counter = packet_counter+1;
					A_nxt= {A_nxt,data_a[8:1]};
			
				end
			end
			else if( packet_counter<8) begin
				data_b[11-1-bit_counter] = sin;			
				bit_counter = bit_counter + 1;
				if (bit_counter == 11) begin
					packet_counter = packet_counter+1;
					B_nxt= {B_nxt,data_b[8:1]};
			
				end
			end
			else if(packet_counter == 8) begin
				data_ctl[11-1-bit_counter] = sin;			
				bit_counter = bit_counter + 1;
				if (bit_counter == 11) begin
					CTL = data_ctl[8:1];
					CRC = nextCRC4_D68({A_nxt[31:0],B_nxt[31:0],1'b1,data_ctl[7:5]}, 4'b0000);
					packet_counter = 0;
					if(CRC == data_ctl[4:1]) begin
						A = A_nxt;
						B = B_nxt;
						CTL = data_ctl[8:1];
						stop = 1;
						bit_counter =1;
					end
					else begin
						CTL = 8'b10100101;
						error =1;
						bit_counter = 9;
					end
				end
			end
			if ( error_data == 1) begin
				bit_counter =9;
				CTL = 8'b11001001;
				error= 1;
				error_data =0;
				
			end
		
			
		end
		end
	//$display("ctl_des: %b", CTL);
end

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

