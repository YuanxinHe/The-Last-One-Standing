
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);

for(var i = 0; i < menuSize; i++){
	var color = c_gray;
	var optionHeight = fontSize;
	var txt = menu[i]
	
	draw_set_font(font_menu);
	if(i == currentMenuIndex){
		txt = string_insert("-> ", txt, 0);
		color = c_white;
		draw_set_font(font_menu_Bold);
	}
	
	var xx = menuX;
	var yy = menuY + (menuItemGap * i * 1.5);
	
	draw_set_color(color);
	draw_text(xx,yy,txt);
}

