effect_create_below(ef_ring, x, y, 1, c_maroon);
effect_create_below(ef_ellipse, x, y, 1, c_fuchsia);
effect_create_below(ef_firework, x, y, 1, c_green);
effect_create_below(ef_smokeup, x, y, 1, c_white);
audio_play_sound(snd_boss_destroy, 10, false);

ender = instance_create_layer(x, y, "lyr_UI", obj_ender);


