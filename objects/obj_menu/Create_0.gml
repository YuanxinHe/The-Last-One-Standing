#macro SAVE_FILE_0 "save0.sav"

guiWidth = display_get_gui_width();
//guiHeight = display_get_gui_height();
guiMargin = 30;

menuX = guiWidth + 200;
menuY = 50;
menuToX = guiWidth - guiMargin

menuItemGap = 25;

menu[0] = "New Game"
menu[1] = "Countinue"
menu[2] = "Quit"

menuSize = array_length_1d(menu);

fontSize = font_get_size(font_Menu);

currentMenuIndex = 0;

hasControl = true;
menuCommitted = -1;