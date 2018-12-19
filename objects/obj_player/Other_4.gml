/// @description Save CheckPoint
if(file_exists(SAVE_FILE_0)){
	file_delete(SAVE_FILE_0);	
}

var file = file_text_open_write(SAVE_FILE_0);
file_text_write_real(file,room);
file_text_close(file);