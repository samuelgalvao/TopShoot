randomize();



global.level = 1

global.vidaP = 3;

timer_reinicia = room_speed;

cria_inimigo = function()
{
	var _x = irandom_range(100, room_width - 100);
	var _y = irandom_range(100, room_height - 100);
	var _inimigo = instance_create_layer(_x, _y, "instances", obj_enemy02);
	var _dis  = point_distance(_inimigo.x, _inimigo.y, obj_player.x, obj_player.y);
	
	if (_dis < 200)
	{
		instance_destroy(_inimigo, false);
	}
	
}

levelup = function()
{
	if (instance_number(obj_enemy02) <= 0)
	{
		timer_reinicia--;
		if (timer_reinicia == 0)
		{
			global.level++;
			timer_reinicia = room_speed;
			room_restart();
		}
	}
}

