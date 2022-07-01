yuuka = instance_create_layer( 1792, 2464,  "lyr_ground", obj_yuuka_shadow);yuuka.timer = 90;

lockcam = instance_nearest(x,y, obj_cutscene_camera);
with( lockcam ) {
	speed = 2;
	direction = 0;
}

with (obj_marisa) {
	cutscene_anim = false;
	direction = 0;
}

