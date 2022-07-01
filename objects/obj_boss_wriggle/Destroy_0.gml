effect_create_below(ef_ring, x, y, 1, c_blue);effect_create_below(ef_ellipse, x, y, 1, c_maroon);
effect_create_below(ef_firework, x, y, 1, c_lime);
effect_create_below(ef_smokeup, x, y, 1, c_silver);
audio_play_sound(snd_boss_destroy, 10, false);

if (!audio_is_playing(areatheme)) {
	audio_stop_sound(lovecoloredweh);
	audio_stop_sound(inaudibledream);
	audio_stop_sound(mooninginsect);
	audio_play_sound(areatheme, 0, true);
}

instance_create_layer(x, y, "lyr_ground", obj_powerup);
