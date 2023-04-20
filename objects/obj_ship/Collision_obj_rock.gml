/// @description Collide with Rock event
// On collision with rock

lives -= 1;
global.dead = true;
instance_destroy();


repeat(15){ // visual effect of exploding
		instance_create_layer(x,y,"Instances",obj_debris);
}

