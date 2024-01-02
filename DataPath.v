module DataPath(
    input update,
    input [1:0] row, col,
    input player,
    input [8:0] marked, owner, error,
    input enable,
    
    output [8:0] mark,
    output gameOver, winner, draw, err
    );

    wire isGameOver, errorOR, playersErr;
   
    PlayersError PE(update,player,marked,playersErr);
    Decoder D (mark, row, col, enable);
    Winner W (/*clk, rst,*/ marked, owner, draw, winner, isGameOver);
    
    or  E_OR (errorOR, error[0], error[1], error[2],error[3], error[4], error[5], error[6], error[7], error[8],playersErr);
    and E_AND (err, errorOR, ~isGameOver);
    or  GO (gameOver, isGameOver, err);
endmodule
