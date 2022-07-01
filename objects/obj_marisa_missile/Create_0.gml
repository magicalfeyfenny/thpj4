target_delay = SHOT_MISSILE_TARGET_DELAY;

if ( instance_exists( obj_enemy_parent ) ) {
	target = instance_nearest(x,y, obj_enemy_parent);
} else {
	target = instance_nearest(x,y, obj_wall);
}
