module mtm_Alu_serializer(
  input  wire clk,   
  input  wire rst_n,
  input wire [31:0] C,
  input wire [7:0] CTL_out,
  output reg sout
  );

  localparam 	IDLE = 3'b000,  
  	 	TRANSFER_DATA = 3'b001,
	  	TRANSFER_CTL = 3'b010,
  		FIRST_BIT = 3'b011, 
		TRANSFER_OPT = 3'b100, 
  		END = 3'b101;   


  reg [7:0] bit_counter;
  reg [4:0] packet_counter;
  reg [2:0] state;
  reg [31:0] C_nxt;
  reg [7:0] CTL_nxt;

  initial begin
    state = IDLE;
    bit_counter = 0;
    packet_counter = 0;
  end

always @(posedge clk) begin
    if (!rst_n) begin
      state = IDLE;
      bit_counter = 0;
      packet_counter = 5;
      CTL_nxt = 0;
      C_nxt = 0;
      sout = 1;
    end
    else begin
      case(state)
        IDLE: begin
	  if (CTL_out[7] == 0) begin
            C_nxt = C;
            CTL_nxt = CTL_out;
            packet_counter = 0;
            bit_counter = 31;
	    state = FIRST_BIT;
          end
          else if (CTL_out[7:0] == 8'b11001001 || CTL_out[7:0] == 8'b10010011 || CTL_out[7:0] == 8'b10100101) begin
            state = FIRST_BIT;
            C_nxt = C;
            CTL_nxt = CTL_out;
            packet_counter = 4;
          end
          else begin
            sout = 1;
          end
        end
        FIRST_BIT: begin
          sout = 0;
	  state = TRANSFER_OPT;
          end
	TRANSFER_OPT: begin // byte_counter> 1 for data (4packets) / =0 for ctl
		if (packet_counter < 4) begin
            sout = 0;
            state = TRANSFER_DATA;
          end
          else begin
            sout = 1;
            state = TRANSFER_CTL;
            bit_counter = 7;
          end
        end
        TRANSFER_DATA: begin
          if ((bit_counter+1)% 8 == 1) begin
            sout = C_nxt[bit_counter];
            state = END;
            packet_counter = packet_counter + 1;
            bit_counter = bit_counter - 1;
          end
          else begin
            sout = C_nxt[bit_counter];
            bit_counter = bit_counter - 1;
          end
        end
        TRANSFER_CTL: begin
          if (bit_counter == 0) begin
            sout = CTL_nxt[bit_counter];
            packet_counter = packet_counter + 1;
	    state = END;
          end
          else begin
            sout = CTL_nxt[bit_counter];
            bit_counter = bit_counter - 1;
          end
        end
        END: begin
          sout = 1;
	  if (packet_counter == 5) begin
            	state = IDLE;
          end
          else
          	state = FIRST_BIT;
          end
      endcase
    end
  end

endmodule
