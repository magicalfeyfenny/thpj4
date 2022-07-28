if (global.cutscene_mode) {
	if (timeline_running && global.dialogue_mode ) {
		timeline_running = false;
	}
	if (!timeline_running && !global.dialogue_mode ) {
		timeline_running = true;
	}
}

if (cutscene_mover) {
	move_towards_point( 736, 668, 2.5 );
	if (x > 734 && x < 738 && y > 666 && y < 670 ) {
		cutscene_mover = false;
		speed = 0;
		direction = 270;
	}
}
