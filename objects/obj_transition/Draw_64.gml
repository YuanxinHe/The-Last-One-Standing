/// @description 切换场景动画
if(mode != TRANS_MODE.OFF){
	draw_set_color(c_black);
	draw_rectangle(0,0,guiWidth,percent*guiHeightHalf, false);
	draw_rectangle(0,guiHeight,guiWidth,guiHeight - (percent * guiHeightHalf), false);
}

//draw_set_color(c_white);
//draw_text(100,100,string(percent));