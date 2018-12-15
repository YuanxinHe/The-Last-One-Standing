if(mode != TRANS_MODE.OFF){
	// 切换场景时的黑幕占屏比
	
	if(mode == TRANS_MODE.INTRO){
		// 黑幕升起
		percent = max(0, percent - max(percent/30, 0.005));	
	}else{
		// 黑幕落下 - 当TRANS_MODE值改变为GOTO,NEXT,RESTART时
		percent = min(1.1, percent + max((1.1 - percent)/10, 0.005));	
	}
	
	if(percent == 1.1 || percent ==0){
		switch(mode){
			case TRANS_MODE.INTRO:
			{
				mode = TRANS_MODE.OFF;
				break;
			}
			case TRANS_MODE.NEXT:
			{
				mode = TRANS_MODE.INTRO;
				room_goto_next();
				break;
			}
			case TRANS_MODE.GOTO:
			{
				mode = TRANS_MODE.INTRO;
				room_goto(targetRoom);
				break;
			}
			case TRANS_MODE.RESTART:
			{
				game_restart();
				break;
			}
		}
	}
}