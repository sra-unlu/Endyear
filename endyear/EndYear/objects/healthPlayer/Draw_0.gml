if (player_hp > 133){
	draw_set_colour(c_green);
} else if (player_hp > 66){
	draw_set_colour(c_yellow);
} else{
	draw_set_colour(c_red);
} draw_rectangle(x, y, x + (player_hp * 110)/200, y+20, false);