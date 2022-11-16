draw_self();


gpu_set_blendmode(bm_add);

draw_sprite_ext(spr_exlosao, image_index, x, y, image_xscale * 1.1, image_yscale * 1.1, image_angle, c_red, .5);

gpu_set_blendmode(bm_normal);
