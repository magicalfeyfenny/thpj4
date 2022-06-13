draw_set_halign(fa_left);

var dx = camera_get_view_x(global.camera);
var dy = camera_get_view_y(global.camera);

draw_text(	5 + dx,  5 + dy, fps );draw_text( 20 + dx,300 + dy, scr_input_get( INPUT_LEFT ) );
draw_text( 70 + dx,300 + dy, scr_input_get( INPUT_RIGHT ) );
draw_text( 45 + dx,280 + dy, scr_input_get( INPUT_UP ) );
draw_text( 45 + dx,320 + dy, scr_input_get( INPUT_DOWN ) );
draw_text(150 + dx,300 + dy, scr_input_get( INPUT_SHOT_LEFT ) );
draw_text(165 + dx,300 + dy, scr_input_get( INPUT_BOMB ) );
draw_text(180 + dx,300 + dy, scr_input_get( INPUT_SHOT_RIGHT ) );

