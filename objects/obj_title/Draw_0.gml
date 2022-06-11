switch ( title_mode ) {	case TITLE_MODE_START_FADEIN: {
		draw_set_font (fn_textlarge);
		draw_set_halign(fa_center);
		draw_text_ext_transformed_color(190, 100, "Sunflowers",	15, 1000, 3, 3, 25, c_yellow, c_yellow, c_orange, c_orange, ( 100 - title_switch_timer ) / 100 );
		draw_text_ext_transformed_color(500, 200, "Rain",	15, 1000, 3, 3, 25, c_dkgray, c_dkgray, c_silver, c_silver, ( 100 - title_switch_timer ) / 100 );
		draw_set_font(fn_cursive);
		draw_text_ext_transformed_color(360, 140, "in the",	15, 1000, 1, 1, 0, c_white, c_white, c_white, c_white, ( 100 - title_switch_timer ) / 100 );
		break;
	}
	case TITLE_MODE_START_READY: {
		draw_set_font (fn_textlarge);
		draw_set_halign(fa_center);
		draw_text_ext_transformed_color(190, 100, "Sunflowers",	15, 1000, 3, 3, 25, c_yellow, c_yellow, c_orange, c_orange, 1 );
		draw_text_ext_transformed_color(500, 200, "Rain",	15, 1000, 3, 3, 25, c_dkgray, c_dkgray, c_silver, c_silver, 1 );
		draw_set_font(fn_cursive);
		draw_text_ext_transformed_color(360, 140, "in the",	15, 1000, 1, 1, 0, c_white, c_white, c_white, c_white, 1 );
		break;
	}
	case TITLE_MODE_MENU_FADEIN: {
		break;
	}
	case TITLE_MODE_MENU_READY: {
		break;
	}
	default: {
		break;
	}
}


