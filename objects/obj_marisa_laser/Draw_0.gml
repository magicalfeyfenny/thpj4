draw_self();
if (lifetime <= SHOT_LASER_LIFETIME - SHOT_LASER_ARM ) {
	draw_set_color(c_white);
	draw_line_width(x, y, x + 500, y, 6);
	draw_line_width(x, y, x + 500, y + 500, 6);
	draw_line_width(x, y, x, y + 500, 6);
	draw_line_width(x, y, x - 500, y + 500, 6);
	draw_line_width(x, y, x - 500, y, 6);
	draw_line_width(x, y, x - 500, y - 500, 6);
	draw_line_width(x, y, x + 500, y - 500, 6);
	draw_line_width(x, y, x, y - 500, 6);
}
