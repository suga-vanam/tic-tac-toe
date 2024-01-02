module Winner(
	//input clk, rst, 
	input [8:0] marked, owner,
	
	output reg draw, winner, gameOver
 );
 
	wire [1:0] pos1, pos2, pos3, pos4, pos5, pos6, pos7, pos8, pos9;
	reg NoWin;
		assign pos1 = {marked[0], owner[0]};
    	assign pos2 = {marked[1], owner[1]};
    	assign pos3 = {marked[2], owner[2]};
    	assign pos4 = {marked[3], owner[3]};
    	assign pos5 = {marked[4], owner[4]};
    	assign pos6 = {marked[5], owner[5]};
    	assign pos7 = {marked[6], owner[6]};
    	assign pos8 = {marked[7], owner[7]};
    	assign pos9 = {marked[8], owner[8]};
	 
	always @(*) begin
		winner=0; draw=0; gameOver=0;
		NoWin=0;
		 
		if (pos1[1]==1 && pos2[1]==1 && pos3[1]==1)begin
			if(pos1[0]==1 && pos2[0]==1 && pos3[0]==1) begin
				winner = 1; gameOver = 1; NoWin=1;end
			else if(pos1[0]==0 && pos2[0]==0 && pos3[0]==0)begin
				winner = 0; gameOver = 1; NoWin=1; end
		end

		else if(pos4[0]==1 && pos5[0]==1 && pos6[0]==1) begin
			if(pos4[1]==1 && pos5[1]==1 && pos6[1]==1)begin
				winner = 1; gameOver = 1;NoWin=1;end
			else if(pos4[1]==0 && pos5[1]==0 && pos6[1]==0)begin
				winner = 0; gameOver=1;NoWin=1;end
		end
		 
		else if(pos7[0]==1 && pos8[0]==1 && pos9[0]==1) begin
			if(pos7[1]==1 && pos8[1]==1 && pos9[1]==1)begin
				winner = 1; gameOver=1;NoWin=1;end
			else if(pos7[1]==0 && pos8[1]==0 && pos9[1]==0)begin
				winner = 0; gameOver=1;NoWin=1;end
		end
		 
		else if(pos1[0]==1 && pos4[0]==1 && pos7[0]==1) begin
			if(pos1[1]==1 && pos4[1]==1 && pos7[1]==1)begin
				winner = 1; gameOver=1;NoWin=1;end
			else if(pos1[1]==0 && pos4[1]==0 && pos7[1]==0)begin
				winner = 0; gameOver=1;NoWin=1;end
		end
		
		else if(pos2[0]==1 && pos5[0]==1 && pos8[0]==1) begin
			if(pos2[1]==1 && pos5[1]==1 && pos8[1]==1)begin
				winner = 1; gameOver = 1;NoWin=1;end
			else if(pos2[1]==0 && pos5[1]==0 && pos8[1]==0)begin
				winner = 0; gameOver = 1;NoWin=1;end
		end 
		
		else if(pos3[0]==1 && pos6[0]==1 && pos9[0]==1) begin
			if(pos3[1]==1 && pos6[1]==1 && pos9[1]==1)begin
				winner = 1; gameOver=1;NoWin=1;end
			else if(pos3[1]==0 && pos6[1]==0 && pos9[1]==0)begin
				winner = 0; gameOver=1;NoWin=1;end
		end
		
		else if(pos1[0]==1 && pos5[0]==1 && pos9[0]==1) begin
			if(pos1[1]==1 && pos5[1]==1 && pos9[1]==1)begin
				winner = 1; gameOver=1;NoWin=1;end
			else if(pos1[1]==0 && pos5[1]==0 && pos9[1]==0)begin
				winner = 0; gameOver=1;NoWin=1;end
		end
		
		else if(pos3[0]==1 && pos5[0]==1 && pos7[0]==1) begin
			if(pos3[1]==1 && pos5[1]==1 && pos7[1]==1)begin
				winner = 1; gameOver=1;NoWin=1;end
			else if(pos3[1]==0 && pos5[1]==0 && pos7[1]==0)begin
				winner = 0; gameOver=1;NoWin=1;end
		end 		

		else
			gameOver = 0; 
	
				
        if(marked==9'b111111111 && NoWin==0) begin 
           draw=1; gameOver=1;
        end
                   
	
	end
	
endmodule