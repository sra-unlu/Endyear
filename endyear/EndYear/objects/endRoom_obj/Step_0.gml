if (keyboard_check(vk_right) or keyboard_check(vk_left)){
	if (rand == 2){
		room_goto(winRoom);
	} else{
		room_goto(loseRoom);
	}
}