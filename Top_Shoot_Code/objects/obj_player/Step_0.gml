#region // MOVIMENTAÇÃO

move();

image_angle = point_direction(x, y, mouse_x, mouse_y);

// CONTROLANDO A ANIMAÇÃO
if (hsp != 0 or vsp != 0){
	image_speed = 1;
}
else{
	image_index = 5;
}

x = clamp(x, 15, 3785);
y = clamp(y, 15, 2585);


#endregion

#region // CRIAÇÃO DO TIRO

var _fire = mouse_check_button(mb_left) or mouse_check_button_pressed(mb_left);

if (!_fire){wait_shoot = 0}

if (_fire)
{
	
	if (wait_shoot <= 0)
	{
		//change_spr();
		sprite_index = spr_player_shoot;
		instance_create_layer(x, y, "tiros", obj_shoot);
		wait_shoot = delay_shoot;
	}
	else
	{
		
		wait_shoot --;
	}
}
else
{
	sprite_index = spr_player_walk
}



#endregion

sofrer_dano();

ficar_invencivel();




