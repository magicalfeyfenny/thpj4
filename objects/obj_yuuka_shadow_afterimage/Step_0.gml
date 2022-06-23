lifetime--;
image_alpha = (lifetime / 10);
if (lifetime <= 0 ) { 
	instance_destroy();
}

