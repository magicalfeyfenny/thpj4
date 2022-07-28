draw_set_halign(fa_left);

dx = camera_get_view_x(global.camera);
dy = camera_get_view_y(global.camera);

//draw_text(	5 + dx,  5 + dy, fps );draw_text( 20 + dx,300 + dy, scr_input_get( INPUT_LEFT ) );
//draw_text( 70 + dx,300 + dy, scr_input_get( INPUT_RIGHT ) );
//draw_text( 45 + dx,280 + dy, scr_input_get( INPUT_UP ) );
//draw_text( 45 + dx,320 + dy, scr_input_get( INPUT_DOWN ) );
//draw_text(150 + dx,300 + dy, scr_input_get( INPUT_SHOT_LEFT ) );
//draw_text(165 + dx,300 + dy, scr_input_get( INPUT_BOMB ) );
//draw_text(180 + dx,300 + dy, scr_input_get( INPUT_SHOT_RIGHT ) );

if (!global.cutscene_mode) {
	draw_sprite( spr_hudgradient, 0, dx, dy);
	
	draw_sprite_ext(spr_marisa_portrait, 0, dx+ 320, dy + 10, 1, 1, 0, c_white, 1);
	
	if (instance_exists(obj_marisa) ) {
		for(var i = 0; i < obj_marisa.hp; i++) {
			draw_sprite_ext(spr_marisaHP, 0, dx + 275 - (27 * i), dy + 25 + (10 * (i % 2) ), .5, .5, -10 + (20 * dsin(counter + (4 * i))), c_white, 1);
		}
	}
	
	draw_set_font(fn_dialogue_names);
	draw_set_color(c_white);
	draw_text( dx+370, dy+18, "Shot: " );
	
	if (instance_exists(obj_marisa) ) {
		draw_set_halign(fa_right);
		switch (obj_marisa.powerup) {
			case PLAYER_POWERUP_NORMAL: {
				draw_text( dx+615, dy+18, "NORMAL");
				break;
			}
			case PLAYER_POWERUP_FLAMES: {
				draw_text( dx+615, dy+18, "F. THROWER " + string(obj_marisa.powerup_ammo));
				break;
			}
			case PLAYER_POWERUP_LASER: {
				draw_text( dx+615, dy+18, "ILLUSION L. " + string(obj_marisa.powerup_ammo));
				break;
			}
			case PLAYER_POWERUP_MISSILE: {
				draw_text( dx+615, dy+18, "M. MISSILE " + string(obj_marisa.powerup_ammo));
				break;
			}
			default: {
				break;
			}
		}
		draw_set_halign(fa_left);
	}
	
	if (instance_exists(obj_boss_wriggle)) {
		draw_set_color(c_black);
		draw_set_alpha(0.7);
		draw_rectangle(dx + 24, dy + 324, dx + 615, dy + 335, false);
		draw_set_color(c_maroon);
		draw_set_alpha(1);
		draw_rectangle(dx + 24, dy + 324, dx + 24 + (591 * obj_boss_wriggle.hp / 1000), dy + 335, false);
		draw_set_color(c_white);
		draw_sprite(spr_healthbar, 0, dx + 320, dy + 330);
		draw_set_font(fn_cursive);
		draw_set_halign(fa_left);
		draw_set_color(c_black);
		draw_text(dx + 61, dy + 301, "Wriggle Nightbug");
		draw_text(dx + 59, dy + 301, "Wriggle Nightbug");
		draw_text(dx + 61, dy + 299, "Wriggle Nightbug");
		draw_text(dx + 59, dy + 299, "Wriggle Nightbug");
		draw_set_color(c_white);
		draw_text(dx + 60, dy + 300, "Wriggle Nightbug");
		//draw_text_ext_transformed_color_border(dx + 60, dy + 305, "Wriggle Nightbug", 20, 1, 1, 1, 0, c_white, c_white, c_white, c_white, 1, 1, c_black);
	}
	
	if (instance_exists(obj_boss_yuuka)) {
		draw_set_color(c_black);
		draw_set_alpha(0.7);
		draw_rectangle(dx + 24, dy + 324, dx + 615, dy + 335, false);
		draw_set_color(c_maroon);
		draw_set_alpha(1);
		draw_rectangle(dx + 24, dy + 324, dx + 24 + (591 * obj_boss_yuuka.hp / 1500), dy + 335, false);
		draw_set_color(c_white);
		draw_sprite(spr_healthbar, 0, dx + 320, dy + 330);
		draw_set_font(fn_cursive);
		draw_set_halign(fa_left);
		draw_set_color(c_black);
		draw_text(dx + 61, dy + 301, "Yuuka Kazami");
		draw_text(dx + 59, dy + 301, "Yuuka Kazami");
		draw_text(dx + 61, dy + 299, "Yuuka Kazami");
		draw_text(dx + 59, dy + 299, "Yuuka Kazami");
		draw_set_color(c_white);
		draw_text(dx + 60, dy + 300, "Yuuka Kazami");
		//draw_text_ext_transformed_color_border(dx + 60, dy + 305, "Yuuka Kazami", 20, 1, 1, 1, 0, c_white, c_white, c_white, c_white, 1, 1, c_black);
	}
}






