with (yuuka) {
	sprite_index = spr_boss_yuuka;
	cutscene_anim = false;
}


global.combat_mode = true;
instance_activate_object(obj_gate);

audio_play_sound(inaudibledream, 0, true);

instance_destroy();




