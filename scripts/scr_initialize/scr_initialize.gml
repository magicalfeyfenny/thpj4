	/// @function							scr_initialize();

#region //define global constants
	#macro LEFT -1
	#macro RIGHT 1
	#macro TOP -1
	#macro BOTTOM 1
	#macro CIRCLE 360
	
	//inputs
	#macro INPUT_UP "input_up"
	#macro INPUT_DOWN "input_down"
	#macro INPUT_LEFT "input_left"
	#macro INPUT_RIGHT "input_right"
	#macro INPUT_SHOT_LEFT "input_shot_left"
	#macro INPUT_SHOT_RIGHT "input_shot_right"
	#macro INPUT_FOCUS "input_focus"
	#macro INPUT_BOMB "input_bomb"
	#macro INPUT_PAUSE "input_pause"
	#macro INPUT_ANY "input_any"

	//window
	#macro WINDOW_BASE_WIDTH 640
	#macro WINDOW_BASE_HEIGHT 360
	#macro VIEW_MULTIPLY_360 1
	#macro VIEW_MULTIPLY_720 2
	#macro VIEW_MULTIPLY_1080 3
	#macro VIEW_MULTIPLY_1440 4
	#macro VIEW_MULTIPLY_2160 6
	
	//menus & files
	#macro OPTIONS_INPUT_TYPE "options_input"
	#macro OPTIONS_FULLSCREEN "options_full_toggle"
	#macro OPTIONS_FULLMULT "options_full_res"
	#macro OPTIONS_WINDOWMULT "options_window_res"
	
	#macro SCORE_READ 0
	#macro SCORE_WRITE 1
	#macro SCORE_INIT 2
	#macro SCORE_ZERO 0
	
	//title
	#macro TITLE_MENU_CHOICES 6
	#macro TITLE_MENU_TEXT_CONTINUE "Continue"
	#macro TITLE_MENU_TEXT_NEW_GAME "New Game"
	#macro TITLE_MENU_TEXT_LOAD_GAME "Load Game"
	#macro TITLE_MENU_TEXT_MUSIC_ROOM "Music Room"
	#macro TITLE_MENU_TEXT_OPTIONS "Options"
	#macro TITLE_MENU_TEXT_EXIT_GAME "Exit Game"
	#macro TITLE_MENU_CHOICE_CONTINUE 1
	#macro TITLE_MENU_CHOICE_NEW_GAME 2
	#macro TITLE_MENU_CHOICE_LOAD_GAME 3
	#macro TITLE_MENU_CHOICE_MUSIC_ROOM 4
	#macro TITLE_MENU_CHOICE_OPTIONS 5
	#macro TITLE_MENU_CHOICE_EXIT_GAME 6
	#macro TITLE_MODE_START_FADEIN 0
	#macro TITLE_MODE_START_READY 1
	#macro TITLE_MODE_MENU_FADEIN 2
	#macro TITLE_MODE_MENU_READY 3
	
	//dialogue
	#macro TEXT_LOADING -1
	#macro TEXT_TYPING 0
	#macro TEXT_READY 1
	#macro EMOTE_NEUTRAL 0
	#macro EMOTE_HAPPY 1
	#macro EMOTE_SAD 2
	#macro EMOTE_CONFUSED 3
	#macro EMOTE_ANGRY 4
	#macro EMOTE_OUCH 5
	#macro LEFT_ACTOR 0
	#macro RIGHT_ACTOR 1
	
	//player	
	#macro SPAWN_X 60
	#macro SPAWN_Y 180
	#macro FOCUS_SPEED 3
	#macro UNFOC_SPEED 6
	#macro SHOT_SPEED 8
	
	#macro SHOT_DELAY 5
	#macro SHOT_PLAYER_DAMAGE 5
	#macro SHOT_PLAYER_SPEED 8
	
	#macro MODE_APPROACH 0
	#macro MODE_CHAT 1
	#macro MODE_CHARGE 2
	#macro MODE_ACTIVE 3
	#macro BOSS_CHARGE_TIME 120
	#macro BOSS_APPROACH_TIME 30
	
	//cutscene
	#macro CUTSCENE_NOSCENE 0
	#macro CUTSCENE_OPENING 1
	#macro CUTSCENE_MIDBOSS 2
	#macro CUTSCENE_BOSS 3
	#macro CUTSCENE_ENDING 4
	
	//effects
	#macro PART_CHERRY_FOUNTAIN 0
	#macro EMIT_CHERRYRAIN 0
	
#endregion

function scr_initialize() {
	randomize();
	scr_options_init();
	scr_input_init();
	scr_scores( SCORE_INIT );
	global.cutscene_mode = false;
	global.cutscene_number = CUTSCENE_NOSCENE;
	//scr_particles_init();
}