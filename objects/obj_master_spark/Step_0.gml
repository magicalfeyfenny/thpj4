expander++;
if (expander > 0) {
	image_yscale = min(0.1 + (0.05 * expander), 3);
	image_xscale = min(1 + (0.3 * expander), 4 );
	if (expander < 80) {
		image_alpha = (0.05 * expander);
	} else {
		image_alpha = 1 - ( (expander - 80) / 40);
	}
}

image_angle = direction;
if (expander > 120) {
	instance_destroy();
}

