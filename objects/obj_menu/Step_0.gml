menuX += (menuToX - menuX) /25;	
if(keyboard_check_pressed(vk_up)){
	currentMenuIndex --;
	if(currentMenuIndex <0) currentMenuIndex = menuSize -1;
}else if(keyboard_check_pressed(vk_down)){
	currentMenuIndex ++;
	if(currentMenuIndex > menuSize -1) currentMenuIndex = 0;
}

