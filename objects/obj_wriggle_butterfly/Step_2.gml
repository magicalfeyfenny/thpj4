if (direction < point_direction(x, y, obj_marisa.x, obj_marisa.y)) {
	direction += 1;
} else {
	if (direction > point_direction(x, y, obj_marisa.x, obj_marisa.y) + 180) {
		direction += 1;
	} else {
		direction -= 1;
	}
}

image_angle = direction;


