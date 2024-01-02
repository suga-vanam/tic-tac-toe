
module TicTacToe_TB;
    //Inputs
    reg clk, rst, player,update;
    reg [1:0] row, col;

    //Outputs
    wire gameOver, winner, draw, err;

    initial begin
    	clk = 1'b1; rst = 1'b0; update=1'b0;
    	#100;
    	rst = 1'b1;
    	row = 2'b00; col = 2'b01; player = 1'b1; //X, top middle
    	#100;
    	row = 2'b01; col = 2'b10; player = 1'b0; //O, top right
    	#100;
        row = 2'b00; col = 2'b00; player = 1'b1; //X, middle middle
        #100;
        row = 2'b10; col = 2'b00; player = 1'b0; //O, bottom left
        #100;
        row = 2'b00; col = 2'b10; player = 1'b1; //X, bottom middle
        #100;
        row = 2'b10; col = 2'b10; player = 1'b0; //O, top left      	
    end    
    
    always #50 clk = ~clk; 
    always #100 update = ~update;

    TicTacToe TTT(clk, rst, player, update ,row, col, gameOver, winner, draw, err);
endmodule

//module TicTacToe_TB;
//    //Inputs
//    reg clk, rst, player, update;
//    reg [1:0] row, col;

//    //Outputs
//    wire gameOver, winner, draw, err;

//    initial begin
//    	clk = 1'b1; rst = 1'b0; update=1'b0;
//    	#100;
//    	rst = 1'b1;
//    	row = 2'b00; col = 2'b01; player = 1'b1; //X, top middle
//    	#100;
//    	row = 2'b00; col = 2'b10; player = 1'b0; //O, top right
//    	#100;
//        row = 2'b01; col = 2'b10; player = 1'b1; //X, middle middle
//        #100;
//        row = 2'b10; col = 2'b01; player = 1'b0; //O, bottom left
//        #100;
//        row = 2'b01; col = 2'b01; player = 1'b1; //X, bottom middle
//        #100;
//        row = 2'b10; col = 2'b10; player = 1'b0; //O, top left   
//        #100;
//        row = 2'b00; col = 2'b00; player = 1'b1; //O, top left   
//        #100;
//        row = 2'b01; col = 2'b00; player = 1'b0; //O, top left  
//        #100;
//        row = 2'b10; col = 2'b00; player = 1'b1; //O, top left  
//        #100;
//        //row = 2'b00; col = 2'b01; player = 1'b0; //O, top left  
//     //  #100;
        
//    end    
    
//    always #50 clk = ~clk; 
//    always #100 update = ~update; 
      
//    TicTacToe TTT(clk, rst, player, update, row, col, gameOver, winner, draw, err);

//endmodule


