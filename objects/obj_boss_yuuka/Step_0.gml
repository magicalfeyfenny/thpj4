if (hp <= 0) {
	instance_destroy();
}	



if (!cutscene_anim) {
	image_index = (direction + 22.5) / 45;
	if (direction + 22.5 >= 360 ) {
		image_index = 0;
	}
}

if (cutscene_anim && !swap ) {	
	sprite_index = spr_yuuka_cutscene;
	image_index = 0;
	swap = true;
}

if (cutscene_anim && swap && image_index == 3) {
	image_speed = 0;
	image_index = 3;
}

if (global.combat_mode) {
	if (combat_moveback) {
		move_towards_point(736, 360, 6);
		if (x > 730 && x < 742 && y > 354 && y < 366) {
			combat_moveback = false;
			path_start(pth_yuukawalk, 4, path_action_restart, false);
		}
	}
	if (!combat_moveback) {
		sparkdrop--;
		if (sparkdrop <= 0) {
			sparkdrop = 200;
			spark = instance_create_layer(x, y, "lyr_ground", obj_master_spark);
			with (spark) {
				direction = point_direction(x, y, obj_marisa.x, obj_marisa.y);
				image_angle = direction;
			}
			audio_play_sound(snd_spark, 10, false);
		}
	}
}
