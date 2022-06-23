timer--;if (timer % 5 == 0) {
	instance_create_layer( x, y, "lyr_ground", obj_yuuka_shadow_afterimage );
}
if (timer <= 0) {
	instance_destroy();
}
