image_angle = direction;

lifetime -= 1;

if ( lifetime <= 0 ) {
	instance_destroy();
}

target_delay--;
if (target_delay <= 0) {
	if (instance_exists( target )) {
		move_towards_point(target.x, target.y, SHOT_MISSILE_SPEED);
	} 
}
