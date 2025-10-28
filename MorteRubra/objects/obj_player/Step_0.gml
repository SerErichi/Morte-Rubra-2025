var esqInput = ( keyboard_check(vk_left) || keyboard_check(ord("A")) );
var dirInput = ( keyboard_check(vk_right) || keyboard_check(ord("D")) );
var cimInput = ( keyboard_check(vk_up) || keyboard_check(ord("W")) );
var baiInput = ( keyboard_check(vk_down) || keyboard_check(ord("S")) );

input_movi.x = -esqInput + dirInput;
input_movi.y = -cimInput + baiInput;

input_movi.normalize();
movimento.change(input_movi.x * velocidade, input_movi.y * velocidade);

if (place_meeting(x + movimento.x, y, colidiveis)){
	//aproximação pixel perfect antes de cancela movimento
	while(!place_meeting(x + movimento.x, y, colidiveis)){
		x += sign(movimento.x);	
	}
	movimento.x = 0;
}
if (place_meeting(x, y + movimento.y, colidiveis)){
	//aproximação pixel perfect
	while(!place_meeting(x, y + movimento.y, colidiveis)){
		y += sign(movimento.y);	
	}
	movimento.y = 0;
}

//show_debug_message("move: ({0}, {1}), input: ({2}, {3}) ", movimento.x, movimento.y,
//					input_movi.x, input_movi.y);


x += movimento.x;
y += movimento.y;