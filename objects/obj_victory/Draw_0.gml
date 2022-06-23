draw_set_alpha( ( 300 - countdown ) / 100 );//draw CG
draw_sprite(spr_endscene, 0, 0, 0);
draw_set_font(fn_cursive);
draw_set_halign(fa_right)
scr_draw_text_ext_transformed_color_border(630, 330, "Next dream...", 20, 500, 1, 1, 0, c_fuchsia, c_fuchsia, c_orange, c_orange, ( 200 - countdown ) / 100, 1, c_white); 

