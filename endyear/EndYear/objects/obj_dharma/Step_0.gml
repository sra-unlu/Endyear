player_x = player.x;
if(hp == 0){
	player_canMove = true;
	player_vilOnScreen = false;
	healthDharma.alarm[0] = 1;
	healthBarBorder_obj.alarm[0]= 1;
	instance_destroy();
}
	