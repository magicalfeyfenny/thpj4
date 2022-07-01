global.combat_mode = true;
instance_activate_object(obj_gate);
if (audio_is_playing(areatheme)) {
	audio_stop_sound(areatheme);
}
audio_play_sound(mooninginsect, 0, true);
instance_destroy();


