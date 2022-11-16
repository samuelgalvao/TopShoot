randomize();
vezes = irandom_range(4, 7) * global.level;

xx = irandom_range(100, room_width - 100);
yy = irandom_range(100, room_height - 100);

var _lay_id = layer_get_id("background");
var _lay_bg = layer_background_get_id(_lay_id);
var _bg		= choose(spr_bg01, spr_bg02, spr_bg03);

layer_background_sprite(_lay_bg, _bg);





if (!instance_exists(obj_player))
{
	instance_create_layer(xx, yy, "player", obj_player);
}
if (!instance_exists(obj_screenshake))
{
	instance_create_layer(0, 0, "instances", obj_screenshake);
}

repeat(vezes)
{
	cria_inimigo();
}
