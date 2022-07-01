lifetime -= 1;

if ( lifetime <= 0 ) {
	instance_destroy();
}


if (lifetime <= SHOT_LASER_LIFETIME - SHOT_LASER_ARM ) {
	if (!sound_played) {		
		audio_play_sound(snd_boss_spellbreak, 10, false);
		sound_played = true;
	}
	var collider = collision_line(x, y, x + 500, y,		 obj_enemy_parent, false, true);
	if ( instance_exists( collider ) ) {
		collider.hp -= SHOT_LASER_DAMAGE;
	}
	var collider = collision_line(x, y, x + 500, y + 500, obj_enemy_parent, false, true);
	if ( instance_exists( collider ) ) {
		collider.hp -= SHOT_LASER_DAMAGE;
	}
	var collider = collision_line(x, y, x,		 y + 500, obj_enemy_parent, false, true);
	if ( instance_exists( collider ) ) {
		collider.hp -= SHOT_LASER_DAMAGE;
	}
	var collider = collision_line(x, y, x - 500, y + 500, obj_enemy_parent, false, true);
	if ( instance_exists( collider ) ) {
		collider.hp -= SHOT_LASER_DAMAGE;
	}
	var collider = collision_line(x, y, x - 500, y,		 obj_enemy_parent, false, true);
	if ( instance_exists( collider ) ) {
		collider.hp -= SHOT_LASER_DAMAGE;
	}
	var collider = collision_line(x, y, x - 500, y - 500, obj_enemy_parent, false, true);
	if ( instance_exists( collider ) ) {
		collider.hp -= SHOT_LASER_DAMAGE;
	}
	var collider = collision_line(x, y, x + 500, y - 500, obj_enemy_parent, false, true);
	if ( instance_exists( collider ) ) {
		collider.hp -= SHOT_LASER_DAMAGE;
	}
	var collider = collision_line(x, y, x,		 y - 500, obj_enemy_parent, false, true);
	if ( instance_exists( collider ) ) {
		collider.hp -= SHOT_LASER_DAMAGE;
	}
}

