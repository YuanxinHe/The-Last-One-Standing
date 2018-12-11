firingDelay -= 1;

if(mouse_button = mb_left || gamepad_button_check(0,gp_shoulderrb)){
	if(firingDelay <= 0){
		firingDelay = 6;
		with(instance_create_layer(x + lengthdir_x(5,angle),y + lengthdir_y(5,angle),"Fire",obj_bullet)){
			image_angle = other.angle;
			direction = other.angle + random_range(-2,2);;			
		}
	}
}