// set the destination position
if(instance_exists(follow)){
	xTo = follow.x;
	yTo = follow.y;
	if(follow.object_index == obj_player_dead){
	x = xTo;
	y = yTo;
}
}


// update cam position smoothly
x += (xTo - x) / 25;
y += (yTo - y) / 25;

// prevent the camera shake off the room
x = clamp(x,viewWideHalf + camBuff, room_width - viewWideHalf - camBuff);
y = clamp(y,viewHeightHalf + camBuff, room_height - viewHeightHalf - camBuff);

// handle the screen shake
if(shakeRemain != 0){
	x += random_range(-shakeRemain,shakeRemain);
	y += random_range(-shakeRemain,shakeRemain);
	shakeRemain -= (1/shakeLength)*shakeStrength;
}

// (x,y) is the top-left corner of the camera rectangle
camera_set_view_pos(mainCam,x - viewWideHalf,y - viewHeightHalf);

if(room != room_Memu){
	if(bgTrees){
		layer_x(bgTrees,x/16);
	}
	if(bgMountain1){
		layer_x(bgMountain1,x/8);
	}
	if(bgMountain2){
		layer_x(bgMountain2,x/4);
	}
	if(bgMountain3){
		layer_x(bgMountain3,x/2);
	}
}