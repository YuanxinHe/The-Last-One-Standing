guiWidth = display_get_gui_width();
guiHeight = display_get_gui_height();
guiHeightHalf = guiHeight * 0.5;

enum TRANS_MODE{
	OFF,
	NEXT,
	GOTO,
	RESTART,
	INTRO	
}

mode = TRANS_MODE.INTRO;
percent = 1;
targetRoom = room;