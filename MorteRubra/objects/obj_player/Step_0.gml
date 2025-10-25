var vx = keyboard_check(vk_right) - keyboard_check(vk_left);
var vy = keyboard_check(vk_down) - keyboard_check(vk_up);

var len = sqrt(vx * vx + vy * vy);

if (len != 0) {
    vx /= len;
    vy /= len;
}

if (place_meeting(x + velocidade*vx, y, Colisor_inv)){
	vx = 0;
}
if (place_meeting(x, y + velocidade*vy, Colisor_inv)){
	vy = 0;
}

show_debug_message("vx: "+string(vx));
show_debug_message("vy: "+string(vy));

x += vx*velocidade;
y += vy*velocidade;