if(keyboard_check_pressed(vk_enter)){
	switch(room){
		
		case rm_start:
			room_goto(rm_game);
			break;
			
		case rm_win:
			room_goto(rm_start);
			break;
			
		case rm_gameover:
			game_restart();
			break;
	}
}

if(room == rm_game){ // only check score and lives when in the game
	
	if global.dead == true {
		if keyboard_check_pressed(vk_enter) {
			instance_create_layer(room_width/2, room_height/2, "Instances", obj_ship);
			global.dead = false;
		} // player presses enter to respawn
	} // end of dead check
	
	if(score >= 1000) {
		room_goto(rm_win);
	}

	if(lives <= 0) {
		room_goto(rm_gameover);
	}
}