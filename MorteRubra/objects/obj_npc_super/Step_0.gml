// Perseguir o player se a suspeita estiver no maximo
if(perseguir){
	if(instance_exists(obj_player)){
		dir.x = x-obj_player.x;
		dir.y = y-obj_player.y;
		
		dir.normalize();
		x -= dir.x*vel;
		y -= dir.y*vel;
	}
}

// Ativa a perseguicao
if(global.sus_level >= global.max_sus){
	perseguir = true;
}

// Muda a direcao do sprite
if (abs(dir.x) > 0) {
    image_index = 1;
    image_xscale = -sign(dir.x)*abs(image_xscale);
    last_dir = -sign(dir.x)*abs(image_xscale);
} else {
    image_index = 0;
    image_xscale = last_dir;
}