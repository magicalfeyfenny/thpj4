end_timer--;
if (end_timer <= 0) {
	
	global.cutscene_mode = false;
	global.cutscene_number = CUTSCENE_NOSCENE;
	global.dialogue_mode = false;
	timeline_running = false;
	room_goto_next();

}

