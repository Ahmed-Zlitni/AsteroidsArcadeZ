keyleft = keyboard_check(vk_left)||keyboard_check(ord("A"));
keyright = keyboard_check(vk_right)||keyboard_check(ord("D"));
keyup = keyboard_check(vk_up)||keyboard_check(ord("W"));


if (keyleft) {
	image_angle += 5;
}
if (keyright) {
	image_angle -= 5;
}
if (keyup) {
	motion_add(image_angle,0.05);
}
move_wrap(true,true,sprite_width/2);
if (keyboard_check_pressed(vk_space)) {
	var bull = instance_create_layer(x,y,"Instances",obj_bullet);
	bull.direction = image_angle;
}


