shoot_spd = 8;

direction = point_direction(x, y, mouse_x, mouse_y);
speed = shoot_spd;

image_xscale = 3;
image_yscale = image_xscale;

colide_inimigo = function()
{
	var _inimigo = instance_place(x, y, obj_enemy01);
	var _inimigo02 = instance_place(x, y, obj_enemy02);
	
	if(_inimigo)
	{
		_inimigo.levar_dano(1);
		global.shake = 4;
		instance_create_layer(x, y, layer, obj_explosao);
		instance_destroy();
	}
	if(_inimigo02)
	{
		_inimigo02.levar_dano(1);
		global.shake = 4;
		instance_create_layer(x, y, layer, obj_explosao);
		instance_destroy();
	}
}
