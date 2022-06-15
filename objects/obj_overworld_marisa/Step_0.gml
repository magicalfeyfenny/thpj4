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

if (!global.cutscene_mode) {
	if ( up || down || left || right ) {
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
		if (delayer >= SHOT_DELAY ) {
			aim = -5 + random(10);
			var shot = instance_create_layer( x, y, "lyr_ground", obj_marisa_shot );
			with (shot) {
				direction = other.shot_direction - other.aim;
				speed = SHOT_PLAYER_SPEED;
			}
			delayer = 0;
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

if ( global.cutscene_mode ) {
	switch (global.cutscene_number) {
		case CUTSCENE_OPENING: {
			break;
		}
		default: {
			break;
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















