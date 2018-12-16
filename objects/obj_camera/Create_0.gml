mainCam = view_camera[0];
follow = obj_player;
view_wide_half = camera_get_view_width(mainCam) / 2;
view_height_half = camera_get_view_height(mainCam) / 2;

xTo = xstart;
yTo = ystart;



// 屏幕震动参数
shakeStrength = 0;			// 震动强度
shakeLength = 0;			// 用于等分震动强度
shakeRemain = 0;			// How much strength left

camBuff = 32;				//防止屏幕震动出边界

bgTrees = layer_get_id("Trees");
bgMountain1 = layer_get_id("Mountain_Level1");
bgMountain2 = layer_get_id("Mountain_Level2");
bgMountain3 = layer_get_id("Mountain_Level3");