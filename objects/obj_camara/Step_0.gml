/// @description 镜头追随

if(instance_exists(obj_player)){
	xTo = obj_player.x;
	yTo = obj_player.y;
}

// 更新镜头位置，使其平缓跟随玩家
x += (xTo - x) / 25;
y += (yTo - y) / 25;

//x = clamp(x,view_wide_half,room_width - view_wide_half);
//y = clamp(y,view_height_half,room_height - view_height_half);

camera_set_view_pos(mainCam,x - view_wide_half,y - view_height_half);
