shootdelay--;
if (shootdelay <= 0) {
	shootdelay = 40;
	audio_play_sound(snd_enemy_bullet, 10, false);
	shoot = instance_create_layer(x, y, "lyr_ground", obj_enemy_shooter_bullet);
	with (shoot) {
		speed = 3;
		direction = point_direction(x, y, obj_marisa.x, obj_marisa.y);
	}
}

