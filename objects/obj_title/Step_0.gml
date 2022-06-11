title_switch_timer -= 1;

if (title_switch_timer <= 0 && title_mode == TITLE_MODE_START_FADEIN ) {
	title_mode = TITLE_MODE_START_READY;
}

if ( title_mode == TITLE_MODE_START_READY ) {
	var input = scr_input_get(INPUT_ANY);
	if (input) {
		title_switch_timer = 100;
		title_mode = TITLE_MODE_MENU_FADEIN;
	}
}

if (title_switch_timer <= 0 && title_mode == TITLE_MODE_MENU_FADEIN ) {
	title_mode = TITLE_MODE_MENU_READY;
}

if (title_mode == TITLE_MODE_MENU_READY ) {
	var input_up = scr_input_get( INPUT_UP );
	var input_down = scr_input_get( INPUT_DOWN );
	var input_select = ( scr_input_get( INPUT_SHOT_LEFT ) || scr_input_get(INPUT_SHOT_RIGHT) );
	var input_exit = scr_input_get( INPUT_PAUSE );

	if (input_up ) {
		menu_position--;
		if (menu_position <= 0) {
			menu_position = TITLE_MENU_CHOICES;
		}
	}
	if (input_down) {
		menu_position++;
		if (menu_position > TITLE_MENU_CHOICES ) {
			menu_position = 1;
		}
	}
	if ( input_exit ) {
		game_end();
	}
	if ( input_select ) {
		switch (menu_position) {
			case 1: {
				break;
			}
			case 2: {
				break;
			}
			case 3: {
				break;
			}
			default: {
				break;
			}
		}
	}
	
}


