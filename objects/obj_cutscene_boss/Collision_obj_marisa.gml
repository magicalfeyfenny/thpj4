if (!global.cutscene_mode) {
	yuuka = instance_create_layer(736, 608, "lyr_ground", obj_boss_yuuka );
	with (yuuka) {
		direction = 270;
	}
	lockcam = instance_nearest(x,y,obj_cutscene_camera);
	global.cutscene_mode = true;
	global.cutscene_number = CUTSCENE_BOSS;
	timeline_index = tml_cutscene_boss;
}



