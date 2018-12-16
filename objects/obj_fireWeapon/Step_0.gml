x = obj_player.x + lengthdir_x(60,angle);
y = obj_player.bbox_top + lengthdir_y(60,angle);
image_angle = angle;
firingDelay -= 1;
firingRecoil = max(0, firingRecoil - 1);;
if((mouse_button = mb_left || gamepad_button_check(0,gp_shoulderrb))&&obj_player.hasControl){
	if(firingDelay <= 0){
		firingDelay = 6;
		firingRecoil = 5;
		ShakeScreen(2,10);
		with(instance_create_layer(x + lengthdir_x(5,angle),y + lengthdir_y(5,angle),"Fire",obj_bullet)){
			image_angle = other.angle;
			direction = other.angle + random_range(-2,2);		
		}
	}
}

x = x - lengthdir_x(firingRecoil,angle);
y = y - lengthdir_y(firingRecoil,angle);