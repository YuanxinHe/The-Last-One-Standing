menuX += (menuToX - menuX) /25;	
var continueSaveFileExisted = file_exists(SAVE_FILE_0);
if(hasControl){
	if(keyboard_check_pressed(vk_up)){
		// 如果没有存档文件，就跳过Continue选项
		if(currentMenuIndex == 2 && !continueSaveFileExisted) currentMenuIndex -=2;
		else currentMenuIndex --;		
		if(currentMenuIndex <0) currentMenuIndex = menuSize -1;
	}else if(keyboard_check_pressed(vk_down)){
		// 如果没有存档文件，就跳过Continue选项
		if(currentMenuIndex == 0 && !continueSaveFileExisted) currentMenuIndex +=2;
		else currentMenuIndex ++;	
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
		case 0: // New Game			
			SlideTransition(TRANS_MODE.GOTO,room_Tutorial);
			break;
		case 1: // Continue
			// 因为有跳过Continue的logic,在这里就不检查文件是否存在了
			var file = file_text_open_read(SAVE_FILE_0);
			var targetRoom = file_text_read_real(file);
			file_text_close(file);
			SlideTransition(TRANS_MODE.GOTO,targetRoom);
			break
		case 2:	
			game_end();	
			break;
	}
}