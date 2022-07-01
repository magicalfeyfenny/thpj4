if (!place_meeting( x + lengthdir_x( dspeed, direction ), y, obj_wall ) ) {	x += lengthdir_x( dspeed, direction );
} else {
	direction = 180 - direction;
	x += lengthdir_x( dspeed, direction );
}
if (!place_meeting( x, y + lengthdir_y( dspeed, direction ), obj_wall ) ) {
	y += lengthdir_y( dspeed, direction );
} else {
	direction = -direction;
	y += lengthdir_y( dspeed, direction );
}
