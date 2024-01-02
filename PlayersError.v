
//the PlayersError is for rising the error signal if the same player played twice 

module PlayersError(
input update,
input player,
input [8:0] marked,

output reg playersErr

    );  
    
     reg currentPlayer, prevPlayer;
    
           always @ (*) begin
        	    currentPlayer<=player;
 
        		if (marked==0) begin 
        		playersErr<=1'b0;
                prevPlayer<= ~currentPlayer;
                end 
                
                else if(prevPlayer==currentPlayer) playersErr<=1'b1;
            end 
            
            
            always @ (negedge update, posedge update) begin
                 prevPlayer<=currentPlayer;        
            end 
            
endmodule





