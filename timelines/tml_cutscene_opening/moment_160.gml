yuuka = instance_create_layer( 1792, 2464,  "lyr_ground", obj_yuuka_shadow);yuuka.timer = 90;

with( instance_nearest(x, y, obj_cutscene_camera) ) {
	speed = 2;
	direction = 0;
}
