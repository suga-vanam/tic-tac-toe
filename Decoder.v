module Decoder(
	output reg [8:0] square,
	input [1:0] row,
	input [1:0] col,
	input en
	);
    
always @(*) begin
	if (en == 1'b1)
		case ({row,col})
			4'b0000: square <= 9'b000000001; //top left 
			4'b0001: square <= 9'b000000010; //top middle 
			4'b0010: square <= 9'b000000100; //top right 
			4'b0100: square <= 9'b000001000; //center left   
			4'b0101: square <= 9'b000010000; //center middle 
			4'b0110: square <= 9'b000100000; //center right  
			4'b1000: square <= 9'b001000000; //bottom left   
			4'b1001: square <= 9'b010000000; //bottom middle 
			4'b1010: square <= 9'b100000000; //bottom right  
			default: square <= 9'b000000000;
		endcase      
	else
		square <= 9'b000000000;
	end

endmodule
