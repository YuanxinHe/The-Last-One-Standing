if(obj_player.usingController){
	controllerX = gamepad_axis_value(0, gp_axisrh);
	controllerY = gamepad_axis_value(0, gp_axisrv);
	angle = point_direction(0,0,controllerX,controllerY);
}else{	
	angle = point_direction(obj_player.x,obj_player.y,mouse_x,mouse_y);
}


x = obj_player.x + lengthdir_x(60,angle);
y = obj_player.bbox_top + lengthdir_y(60,angle);