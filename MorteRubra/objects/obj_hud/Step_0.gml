if(keyboard_check_pressed(ord("E"))){
	global.sus_level++;
	if(global.sus_level >= global.max_sus){
		show_debug_message("Game over");
	}
}