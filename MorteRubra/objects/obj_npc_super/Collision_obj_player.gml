// Se colidir com o player printa game over
if(perseguir){
	show_debug_message("GAME OVER");
}else{
	// Se nao estiver perseguindo, pode ser morto
	if(keyboard_check_pressed(ord("E"))){
		instance_destroy();
	}
}