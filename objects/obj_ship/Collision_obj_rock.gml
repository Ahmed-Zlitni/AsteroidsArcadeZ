// On collision with rock

lives -= 1;
instance_destroy();

repeat(15){ // visual effect of exploding
		instance_create_layer(x,y,"Instances",obj_debris);
}

if lives >= 0 {
	room_restart();
}