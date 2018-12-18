menuX += (menuToX - menuX) /25;	
if(hasControl){
	if(keyboard_check_pressed(vk_up)){
		currentMenuIndex --;
		if(currentMenuIndex <0) currentMenuIndex = menuSize -1;
	}else if(keyboard_check_pressed(vk_down)){
		currentMenuIndex ++;
		if(currentMenuIndex > menuSize -1) currentMenuIndex = 0;
	}

	if(keyboard_check_pressed(vk_enter)){
		ShakeScreen(5,30);
		hasControl = false;
		menuToX = guiWidth + 200;
		menuCommitted = currentMenuIndex;
	}		
}

if(menuCommitted != -1 && menuX > guiWidth + 150){
	switch(menuCommitted){
		case 0: 
		case 1:	
		default:
			SlideTransition(TRANS_MODE.GOTO,room_Tutorial);
			break;
		case 2:	
			game_end();	
			break;
	}
}