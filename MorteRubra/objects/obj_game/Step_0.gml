if (keyboard_check(vk_enter)){
	var _caixaDi = instance_create_layer(-1, -1, "Instances", obj_caixa_dialogo);
	_caixaDi.addDialogue("Isso e um teste");
	_caixaDi.addDialogue("................ oioioioioi oioioioi oioioioi oioioioi oioioioi oioioioi ................");
	_caixaDi.addDialogue("BAZINGA");

	if(keyboard_check_pressed(ord("E"))){
		global.sus_level++;
		if(global.sus_level >= global.max_sus){
			show_debug_message("Game over");
		}

	}
}