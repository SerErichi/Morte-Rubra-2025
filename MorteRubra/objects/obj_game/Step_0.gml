// Teste da caixa de dialogo
if (keyboard_check(vk_enter)){
	var _caixaDi = instance_create_layer(-1, -1, "Instances", obj_caixa_dialogo);
	_caixaDi.addDialogue("Isso e um teste");
	_caixaDi.addDialogue("................ oioioioioi oioioioi oioioioi oioioioi oioioioi oioioioi ................");
	_caixaDi.addDialogue("BAZINGA");
	_caixaDi.addDialogue("Isso e real?");
}

// Teste que aumenta o nivel de suspeita
if(keyboard_check_pressed(ord("E"))){
	global.sus_level++;
}

// Printa GAME OVER quando o nivel de suspeita chega no máximo
//if(global.sus_level >= global.max_sus){
//	show_debug_message("Game over");
//}	

Aumentar_Suspeita();


function Aumentar_Suspeita(){
	// Aumenta a barra de suspeita com o tempo
	porcentagem_barra_sus = clamp(porcentagem_barra_sus + 0.1*delta_time/1_000_000,0,1);
	//show_debug_message(porcentagem_barra_sus);
	
	// Quando a barra chega no maximo, aumenta a suspeita em 1
	if(porcentagem_barra_sus == 1){
		global.sus_level++;
		porcentagem_barra_sus = 0;
	}
}