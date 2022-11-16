life = 3;

speed = choose(1, 2);
direction = irandom(259);
image_angle = direction;

_achou = false;

_dividir = false;

cont_spd = 1;

dano = 0;

_levou_dano = false;

control = room_speed * 2;

ficar_room = function()
{
	if (x - sprite_width / 2 < 0 or x + sprite_width / 2 > room_width )
	{
		hspeed *= -1;
	}
	if (y - sprite_height / 2 < 0 || y + sprite_height / 2 > room_height)
	{
		vspeed *= -1;
	}

}

mudar_direc = function()
{
	control--;
	if (control = 0)
	{
		direction = irandom(359);
		control = room_speed * irandom_range(4, 8);
	}
	image_angle = direction;
}

seguir_player = function()
{
	if instance_exists(obj_player)
	{
		
		
		if (point_distance(x, y, obj_player.x, obj_player.y) < 300 or _levou_dano)
		{
			direction = point_direction(x, y, obj_player.x, obj_player.y);
			_achou = true;
		}
		else if (_achou)
		{
			direction = point_direction(x, y, obj_player.x, obj_player.y);
		}
		if (_levou_dano)
		{
			if (cont_spd)
			{
				speed *= 2;
				cont_spd = 0;
			}
		}
	}
	
}

explosao = function()
{
	var _rpt = irandom_range(10, 20)
	repeat(_rpt)
	{
		var _pedaco = instance_create_layer(x, y, layer, obj_pedacos);
		_pedaco.direction = irandom(359);
		_pedaco.image_angle = _pedaco.direction;
		_pedaco.speed = irandom_range(10, 18);
	}
}

levar_dano = function(_dano)
{
	//var _dano;
	_levou_dano = true;
	life -= _dano;
	
	if (life <= 0)
	{
		global.shake = 10;
		instance_create_layer(x, y, layer, obj_vestigio);
		instance_destroy();
		explosao();
	}
}



