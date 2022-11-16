
// SE DESTRUINDO
if (x > 3800 or x < 0){
	instance_destroy();
}
if (y < -20 or y > 2700){
	instance_destroy();
}

image_xscale = lerp(image_xscale, 1, .2);
image_yscale = image_xscale;

colide_inimigo();
