with (obj_marisa) { 
	cutscene_mover = true;
}
with (obj_cutscene_final) {
	cutscene_mover = true;
}
lockcam = instance_nearest(x, y, obj_cutscene_camera);
with (lockcam) {
	x = 736;
	y = 718;
}

if (audio_is_playing(inaudibledream)) {
	audio_stop_sound(inaudibledream);
}
audio_play_sound(lovecoloredweh, 0, true);
