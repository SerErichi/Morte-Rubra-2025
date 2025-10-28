if(instance_exists(obj_player)){
	var i = 0;
	while(i<5){
		draw_sprite_ext(spr_suspeitometro_cheio,1,16+100*i,16,10,10,0,c_white,1);
		i++;
	}
}