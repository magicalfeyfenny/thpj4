countdown--;
if (countdown < 0 ) {
	if (scr_input_get( INPUT_SHOT_RIGHT ) || scr_input_get( INPUT_SHOT_LEFT ) ) {
		room_goto(rm_title);
	}
}
