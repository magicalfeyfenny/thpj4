shootdelay--;
rundelay--;

if (shootdelay <= 0 && volley < 4) {
	shootdelay = 30;
	volley++;
	audio_play_sound(snd_enemy_bullet, 10, false);
	shoot = instance_create_layer(x, y, "lyr_ground", obj_enemy_shooter_bullet);
	with (shoot) {
		speed = 2;
		direction = point_direction(x, y, obj_marisa.x, obj_marisa.y) - 20;
	}
	shoot = instance_create_layer(x, y, "lyr_ground", obj_enemy_shooter_bullet);
	with (shoot) {
		speed = 2;
		direction = point_direction(x, y, obj_marisa.x, obj_marisa.y);
	}
	shoot = instance_create_layer(x, y, "lyr_ground", obj_enemy_shooter_bullet);
	with (shoot) {
		speed = 2;
		direction = point_direction(x, y, obj_marisa.x, obj_marisa.y) + 20;
	}
}

if (rundelay <= 0) {
	if (!targeting) {
		runtarget_x = obj_marisa.x;
		runtarget_y = obj_marisa.y;
		targeting = true;
	}
	if (targeting) {
		move_towards_point(runtarget_x, runtarget_y, 3);
		if (x < runtarget_x + 10 && x > runtarget_x - 10 && y < runtarget_y + 10 && y > runtarget_y - 10) {
			speed = 0;
			rundelay = 300;
			volley = 0;
			targeting = false;
		}
	}
}

