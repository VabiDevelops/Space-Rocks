if (!g_o) {
	// Existing draw code for lives and score
	draw_set_font(fnt_small);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_text(15, 8, "Lives: " + string(player_lives));
    draw_text(15, 30, "Score: " + string(points));
	
} else {
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_font(fnt_big);
    draw_set_color(c_white);
    draw_text(room_width / 2, room_height / 2 - 20, "GAME OVER :(");
    draw_text(room_width / 2, room_height / 2 + 30, "Press R to resTart");

    draw_set_font(fnt_small);
    draw_text(room_width / 2, room_height / 2 + 100, "Score: " + string(points));
}
