lives -= 1;

instance_destroy();

repeat(15){
		instance_create_layer(x,y,"Instances",obj_debris);
}

