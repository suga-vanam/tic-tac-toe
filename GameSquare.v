module GameSquare(
	input clk, rst, mark, player,

	output reg marked, owner, err
    );
  
	parameter S0 = 2'b00;
	parameter S1 = 2'b01;
	parameter S2 = 2'b10;
	parameter S3 = 2'b11;  
	reg [1:0] state, next_state;
	
	always@(posedge clk or negedge rst) begin
		if(~rst)	state <= S0; 
		else 	state <= next_state;
	end  
		  
	always @(*)  begin 
		next_state <= state;
		marked <= 0; owner <= 0; err <= 0;
		case(state)
			S0: begin
				marked <= 0; owner <= 0; err <= 0;
				if (mark == 1 && player == 0)
					next_state <= S1;
				else if (mark == 1 && player == 1) 
					next_state <= S2;
				else if(mark == 0)
					next_state <= S0;  
			end
			
			S1: begin
				marked <= 1; owner <= 0; err <= 0;
				if(mark == 0) 
					next_state <= S1;
				else if(mark == 1)
					next_state <= S3;
			end
			
			S2: begin
				marked <= 1; owner <= 1; err <= 0;
				if(mark == 0) 
					next_state <= S2; 
				else if(mark == 1)  
					next_state <= S3;
			end
			
			S3: begin
				marked <= 1; owner <= 0; err <= 1;
				next_state <= S3;
			end
		endcase 
	end
	
endmodule
