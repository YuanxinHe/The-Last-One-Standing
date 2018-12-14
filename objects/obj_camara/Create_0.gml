/// @description 初始化镜头
mainCam = view_camera[0];
follow = obj_player;
view_wide_half = camera_get_view_width(mainCam) / 2;
view_height_half = camera_get_view_height(mainCam) / 2;

xTo = xstart;
yTo = ystart;