score += 10;

instance_destroy();

with (other) {
	instance_destroy();
	if(sprite_index == spr_Brock) {
		score += 40;
		repeat(2){
			var new_rock = instance_create_layer(x,y,"Instances",obj_rock);
			new_rock.sprite_index = spr_Mrock;
		}
	} else if(sprite_index == spr_Mrock) {
		score += 20;
		repeat(2){
			var new_rock = instance_create_layer(x,y,"Instances",obj_rock);
			new_rock.sprite_index = spr_Srock;
		}
	}
	
	repeat(10){
		instance_create_layer(x,y,"Instances",obj_debris);
	}
	
}