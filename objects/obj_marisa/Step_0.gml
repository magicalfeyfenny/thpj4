var up = scr_input_get( INPUT_UP );
var down = scr_input_get( INPUT_DOWN );
var right = scr_input_get( INPUT_RIGHT );
var left = scr_input_get( INPUT_LEFT );
var shoot = ( scr_input_get( INPUT_SHOT_RIGHT ) );
var hold = (scr_input_get( INPUT_SHOT_LEFT ) );
var move = false;
if ( up && down ) {
	up = false;
	down = false;
}
if (left && right ) {
	left = false;
	right = false;
}

image_index = (direction + 22.5) / 45;
if (direction + 22.5 >= 360 ) {
	image_index = 0;
}
if (!global.cutscene_mode) {
	if (( up || down || left || right ) && invuln < 75) {
		move = true;
		target_speed = UNFOC_SPEED;
		if ( left ) {
			target_direction = 180;
			image_index = 4;
		}
		if ( up ) {
			target_direction = 90;
			image_index = 2;
		}
		if ( right ) {
			target_direction = 0;
			image_index = 0;
		}
		if ( down ) {
			target_direction = 270;
			image_index = 6;
		}
		if ( up && left ) {
			target_direction = 135;
			image_index = 3;
		}
		if ( up && right ) {
			target_direction = 45;
			image_index = 1;
		}
		if ( down && right ) {
			target_direction = 315;
			image_index = 7;
		}
		if ( down && left ) {
			target_direction = 225;
			image_index = 5;
		}
		direction = target_direction;
	}
	
	if ( shoot ) {
		delayer++;
		cycler++;
		shot_direction = target_direction;
		if ( hold ) {
			if (held_shot_direction == -1 ) {
				held_shot_direction = target_direction;
			}
			shot_direction = held_shot_direction;
			image_index = shot_direction / 45;
			target_speed = FOCUS_SPEED;
		} 
		if (!hold) {
			held_shot_direction = -1;
			target_speed = UNFOC_SPEED;
		}
		switch ( powerup ) {
			case PLAYER_POWERUP_NORMAL: {
				if (delayer >= SHOT_NORMAL_DELAY ) {
					aim = -5 + random(10);
					audio_play_sound(snd_player_shot, 10, false);
					var shot = instance_create_layer( x, y, "lyr_ground", obj_marisa_shot );
					with (shot) {
						direction = other.shot_direction + other.aim;
						speed = SHOT_NORMAL_SPEED;
						lifetime = SHOT_NORMAL_LIFETIME;
					}
					delayer = 0;
				}
				break;
			}			
			case PLAYER_POWERUP_FLAMES: {
				if (delayer >= SHOT_FLAME_DELAY ) {
					aim = -8 + (16 * sin(cycler));
					if (!audio_is_playing(snd_flames)) {
						audio_play_sound(snd_flames, 10, true);
					}
					var shot = instance_create_layer( x, y, "lyr_ground", obj_marisa_flame );
					with (shot) {
						direction = other.shot_direction + other.aim;
						speed = SHOT_FLAME_SPEED;
						lifetime = SHOT_FLAME_LIFETIME;
						friction = SHOT_FLAME_FRICTION;
					}
					powerup_ammo--;
					if (powerup_ammo <= 0) {
						powerup = PLAYER_POWERUP_NORMAL;
						powerup_ammo = 0;
					}
					delayer = 0;
				}
				break;
			}
			case PLAYER_POWERUP_LASER: {
				if (delayer >= SHOT_LASER_DELAY ) {
					var shot = instance_create_layer( x, y, "lyr_ground", obj_marisa_laser );
					with (shot) {
						lifetime = SHOT_LASER_LIFETIME;
					}
					powerup_ammo--;
					if (powerup_ammo <= 0) {
						powerup = PLAYER_POWERUP_NORMAL;
						powerup_ammo = 0;
					}
					delayer = 0;
				}
				break;
			}
			case PLAYER_POWERUP_MISSILE: {
				if (delayer >= SHOT_MISSILE_DELAY ) {
					aim = 130 + random(100);
					audio_play_sound(snd_player_hypershot, 10, false);	
					var shot = instance_create_layer( x, y, "lyr_ground", obj_marisa_missile );
					with (shot) {
						direction = other.shot_direction + other.aim;
						speed = SHOT_MISSILE_SPEED;
						lifetime = SHOT_MISSILE_LIFETIME;
					}
					powerup_ammo--;
					if (powerup_ammo <= 0) {
						powerup = PLAYER_POWERUP_NORMAL;
						powerup_ammo = 0;
					}
					delayer = 0;
				}
				break;
			}
			default: {
				break;
			}
		}
	}
	if (!shoot) {
		if ( audio_is_playing(snd_flames) ) {
			audio_stop_sound(snd_flames);
		}
	}	
	
	
	if ( move ) {
		if ( dspeed < target_speed ) {
			dspeed += 1;
		} else {
			dspeed = target_speed;
		}
	}
}

if ( !move ) {
	target_speed = 0;
	if ( dspeed > target_speed ) {
		dspeed -= 1;
	} else {
		dspeed = target_speed;
	}
}

if (!place_meeting( x + lengthdir_x( dspeed, direction ), y, obj_wall ) ) {
	x += lengthdir_x( dspeed, direction );
}
if (!place_meeting( x, y + lengthdir_y( dspeed, direction ), obj_wall ) ) {
	y += lengthdir_y( dspeed, direction );
}

if ( global.cutscene_mode ) {
	switch (global.cutscene_number) {
		case CUTSCENE_OPENING: {
			if (cutscene_mover) {
				move_towards_point(1440, 2464, 2);
				if (x > 1439 && x < 1441 && y > 2463 && y < 2465 ) {
					cutscene_mover = false;
					speed = 0;
					direction = 0;
				}
			}
			if (cutscene_anim) {
				if (direction != 270) {
					prevdir = direction;
					direction = 270;
				}
			if (!cutscene_anim && !cutscene_mover) {
					direction = 0;
				}
			}
			break;
		}
		case CUTSCENE_MIDBOSS: {
			if (cutscene_mover) {	
				move_towards_point( 2272, 896, 2 );
				if (x > 2271 && x < 2273 && y > 895 && y < 897 ) {
					cutscene_mover = false;
					speed = 0;
					direction = 90;
				}
			}
			break;
		}
		case CUTSCENE_BOSS: {
			if (cutscene_mover) {	
				move_towards_point( 736, 768, 2.5 );
				if (x > 734 && x < 738 && y > 766 && y < 770 ) {
					cutscene_mover = false;
					speed = 0;
					direction = 90;
				}
			}
			break;
		}
		case CUTSCENE_FINAL: {
			if (cutscene_mover) {
				move_towards_point( 736, 768, 2.5 );
				if (x > 734 && x < 738 && y > 766 && y < 770 ) {
					cutscene_mover = false;
					speed = 0;
					direction = 90;
				}
			}
			if (cutscene_anim) {
				spark = instance_create_layer( x, y, "lyr_ground", obj_master_spark);
				with (spark) { 
					direction = point_direction( x, y, obj_cutscene_final.x, obj_cutscene_final.y );
					image_angle = direction;
				}
				audio_play_sound(snd_spark, 10, false);
				cutscene_anim = false;
			}
			if (cutscene_anim_charge) {
				cut_timer++;
				if (cut_timer % 5 == 0) {
					var angle = random(360);
					star = instance_create_layer( x + (64 * dcos(angle)), y + (64 * dsin(angle)), "lyr_ground", obj_marisa_charge_star );
					with (star) {
						direction = point_direction(x, y, other.x, other.y);
						speed = 1.5;
					}
				}
			}
			break;
		}
		default: {
			break;
		}
	}
}

invuln -= 1;




















