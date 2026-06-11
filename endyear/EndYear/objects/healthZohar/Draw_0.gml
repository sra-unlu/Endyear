if (player_hp > 66){
	draw_set_colour(c_green);
} else if (player_hp > 33){
	draw_set_colour(c_yellow);
} else{
	draw_set_colour(c_red);
} draw_rectangle(x, y, x+player_hp, y+20, false);