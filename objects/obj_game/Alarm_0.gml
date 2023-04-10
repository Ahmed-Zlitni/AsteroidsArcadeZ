/// Alarm for spawning more rocks as the game goes on

if(room != rm_game) {
	exit; // stops the spawning of rocks if not in the game room
}

if(choose(0,1) == 0) {
	// left or right side of room
	var xx = choose(0, room_width);
	var yy = irandom_range(0, room_height);
} else {
	// top or bottom of the room
	var xx = irandom_range(0, room_width);
	var yy = choose(0, room_height);
}

instance_create_layer(xx, yy, "Instance", obj_rock);

alarm[0] = 4*room_speed;