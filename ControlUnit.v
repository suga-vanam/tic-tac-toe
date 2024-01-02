module ControlUnit(
	input clk, rst,
    input [8:0] mark,
    input player,
    
    output reg enable,
    output [8:0] marked, owner, error
    );
 
	always @ (posedge clk, negedge rst) begin
		if (~rst) enable = 0;
		else  enable=1; 
    end 

	GameSquare S1(clk, rst, mark[0], player, marked[0], owner[0], error[0]);
	GameSquare S2(clk, rst, mark[1], player, marked[1], owner[1], error[1]);
	GameSquare S3(clk, rst, mark[2], player, marked[2], owner[2], error[2]);
	GameSquare S4(clk, rst, mark[3], player, marked[3], owner[3], error[3]);
	GameSquare S5(clk, rst, mark[4], player, marked[4], owner[4], error[4]);
	GameSquare S6(clk, rst, mark[5], player, marked[5], owner[5], error[5]);
	GameSquare S7(clk, rst, mark[6], player, marked[6], owner[6], error[6]);
	GameSquare S8(clk, rst, mark[7], player, marked[7], owner[7], error[7]);
	GameSquare S9(clk, rst, mark[8], player, marked[8], owner[8], error[8]);

endmodule
