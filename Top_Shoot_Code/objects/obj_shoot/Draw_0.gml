draw_self();

gpu_set_blendmode(bm_add);
draw_sprite_ext(spr_effect, image_index, x, y, image_xscale * 1.1, image_yscale * 1.1, image_angle, c_red, 5);
draw_sprite_ext(spr_effect, image_index, x, y, image_xscale * 1.1, image_yscale * 1.1, image_angle, c_orange, 3);
gpu_set_blendmode(bm_normal);
