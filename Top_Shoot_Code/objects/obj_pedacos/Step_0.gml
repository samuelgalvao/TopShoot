

speed *= .9;
image_alpha -= .008;
if (image_alpha < .1){
	instance_destroy();
}
