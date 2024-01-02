module TicTacToe(
    input clk, rst, player, update,
    input [1:0] row, col,
    
    output gameOver, winner, draw, ERR
    );
    
    wire [8:0] mark;
    wire enable;
    wire [8:0] marked, owner, error;
    
    DataPath    DP(update, row, col, player, marked, owner, error, enable, mark, gameOver, winner, draw, ERR);
    ControlUnit CU(clk, rst, mark, player, enable, marked, owner, error);
   
endmodule
