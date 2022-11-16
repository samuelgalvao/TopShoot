

_x = 1100;
repeat(global.vidaP)
{
	
	draw_sprite_ext(spr_coracao, 0, _x, 40, 2, 2, image_angle, c_white, .7);
	_x += 35;
}
if (instance_exists(obj_player) || instance_exists(obj_enemy02))
{
	
	with (obj_player)
	{
		var _inimigo = instance_nearest(x, y, obj_enemy02);
		var _dis	 = point_direction(x, y, _inimigo.x, _inimigo.y);
	
		draw_sprite_ext(spr_seta, 0, 640, 60, 1, 1, _dis, c_white, 1);
	}
}
/*
draw_text(1150, 100, "Level: " + string(global.level));
draw_text(1150, 120, "Inimigos: " + string(instance_number(obj_enemy02)));
*/
