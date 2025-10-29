// Desenha o suspeitometro 
if(instance_exists(obj_player)){
	var i = 0;
	while(i<global.max_sus){
		var frame = 0; // vazio por padrão
		
		if (i < global.sus_level) {
			frame = 1; // cheio
		}
		draw_sprite_ext(spr_suspeitometro,frame,16+100*i,16,10,10,0,c_white,1);
		i++;
	}
	draw_sprite_stretched_ext(spr_sus_barra,0,16,128,comprimento*porcentagem_barra_sus,10,c_white,1);
}