
hsp = 0;
vsp = 0;
spd = 5;
wait_shoot = 0;
delay_shoot = room_speed / 4;
global.vidaP = 3;
invencivel = false;
timer_inven = room_speed * 3;

//piscar
delay_piscar = room_speed / 2;
timer_piscar = 0;











move = function()
{
	var _up, _down, _left, _right;
	_up = keyboard_check(vk_up) or keyboard_check(ord("W"));
	_down = keyboard_check(vk_down) or keyboard_check(ord("S"));
	_left = keyboard_check(vk_left) or keyboard_check(ord("A"));
	_right = keyboard_check(vk_right) or keyboard_check(ord("D"));

	hsp = -_left + _right;
	vsp = -_up +_down;

	x += hsp * spd;
	y += vsp * spd;
}



sofrer_dano = function()
{
	var _inimigo = instance_place(x, y, obj_enemy_dad)
	
	if (_inimigo && invencivel == false)
	{
		global.vidaP -= _inimigo.dano;
		global.shake = 5;
		invencivel = true
		
	}
	if (global.vidaP <= 0)
	{
		instance_destroy();
		room_restart();
	}
}

piscar = function()
{
	timer_piscar--;
	if (timer_piscar <= 0)
	{
		image_alpha = 1;
		timer_piscar = delay_piscar;
	}
	else if (timer_piscar == delay_piscar / 3)
	{
		image_alpha = .3;
	}
	else if (timer_piscar == delay_piscar / 2)
	{
		image_alpha = .5;
	}
}

ficar_invencivel = function()
{
	if (invencivel)
	{
		
		piscar();
		timer_inven--;
		if (timer_inven == 0)
		{
			invencivel = false;
			image_alpha = 1;
			timer_piscar = 0;
			timer_inven = room_speed * 3;
		}
	}
}















