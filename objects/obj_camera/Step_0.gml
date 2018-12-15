// set the destination position
if(instance_exists(obj_player)){
	xTo = obj_player.x;
	yTo = obj_player.y;
}

// update cam position smoothly
x += (xTo - x) / 25;
y += (yTo - y) / 25;

// prevent the camera shake off the room
x = clamp(x,view_wide_half + camBuff,room_width - view_wide_half - camBuff);
y = clamp(y,view_height_half + camBuff,room_height - view_height_half - camBuff);

// handle the screen shake
if(shakeRemain != 0){
	x += random_range(-shakeRemain,shakeRemain);
	y += random_range(-shakeRemain,shakeRemain);
	shakeRemain -= (1/shakeLength)*shakeStrength;
}

// (x,y) is the top-left corner of the camera rectangle
camera_set_view_pos(mainCam,x - view_wide_half,y - view_height_half);
