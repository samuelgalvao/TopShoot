
event_inherited();

life = 5;

dano = 1;

timer_egg = room_speed * 10;

levar_dano = function(_dano)
{
	//var _dano;
	_levou_dano = true;
	life -= _dano;
	
	if (life <= 0)
	{
		global.shake = 10;
		_dividir = true;
		se_dividir();
		instance_create_layer(x, y, layer, obj_vestigio);
		instance_destroy();
		explosao();
	}
}

se_dividir = function()
{
	var _rpt = irandom_range(2, 4)
	if (_dividir)
	{
		repeat(_rpt)
		{
			var _dis = choose(-10, -16, -14, 10, 15, 16);
			instance_create_layer(x + _dis, y + _dis, layer, obj_enemy01);
		}
	}
}

criar_ovo = function()
{
	timer_egg--;
	if (timer_egg == 0)
	{
		instance_create_layer(x, y, layer, obj_enemyegg);
		timer_egg = room_speed * irandom_range(8, 12);
	}
}


