switch(room){
	
	case rm_start:
		draw_set_halign(fa_center);
		var c = c_blue;
		draw_text_transformed_color(
		room_width/2+4, 74, "NON-EARTH MINERALS",
		3, 3, 0, c,c,c,c, 1);
		c = c_teal;
		draw_text_transformed_color(
		room_width/2, 70, "NON-EARTH MINERALS",
		3, 3, 0, c,c,c,c, 1);
		
		draw_text(room_width/2, 150,
		"Score 1,000 points to win!");
		
		draw_set_halign(fa_left);
		c = c_yellow;
		draw_text_color(20,270,@"UP: forward
LEFT/RIGHT: turn
SPACE: shoot",
		c,c,c,c, 1);
		
		draw_set_halign(fa_center);
		draw_text_transformed(room_width/2, 400, "_//|| PRESS ENTER TO START ||\\_",
		1.5, 1.5, 0);
		
		draw_set_halign(fa_left);
		break; // end case rm_start
		
	case rm_game:
		draw_text(20,20,"SCORE: "+string(score));
		draw_text(20,40,"LIVES: "+string(lives));
		break; // end case rm_game
		
	case rm_win:
		draw_set_halign(fa_center);
		//the green one should shadow the olive one
		var c = c_green;
		draw_text_transformed_color(
		room_width/2+4, 74, "YOU WIN!",
		4, 5, 0, c,c,c,c, 1);
		c = c_olive;
		draw_text_transformed_color(
		(room_width/2), 70, "YOU WIN!",
		4, 5, 0, c,c,c,c, 1);
		
		draw_text_transformed(room_width/2, 400, "| PRESS ENTER TO RESTART |",
		1.5, 1.5, 0);
		
		draw_set_halign(fa_left);
		break; // end case rm_win
		
	case rm_gameover:
		draw_set_halign(fa_center);
		//the maroon one should shadow the red one, or at least thats the goal (it worked!)
		var c = c_maroon;
		draw_text_transformed_color(
		(room_width/2)+4, 74, "GAME OVER",
		4, 5, 0, c,c,c,c, 1);
		c = c_red;
		draw_text_transformed_color(
		room_width/2, 70, "GAME OVER",
		4, 5, 0, c,c,c,c, 1);
		
		draw_text(room_width/2, 300, "YOUR SCORE: "+string(score));
		
		draw_text_transformed(room_width/2, 400, "| PRESS ENTER TO RESTART |",
		1.5, 1.5, 0);
		
		draw_set_halign(fa_left);
		break; // end case rm_gameover

}