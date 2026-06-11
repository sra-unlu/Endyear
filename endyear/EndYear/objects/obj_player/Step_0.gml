if (keyboard_check(vk_right) && x < 9960 && !vilOnScreen && canMove){
	x+=2;
	if(stepped == 0){
		sprite_index = spr_pfw1;
	} if (stepped == 20){
		sprite_index = spr_pwf2;
		stepped = -20;
	} stepped++;
} else if (keyboard_check(ord("L"))){
	x+=20;
}else{
	sprite_index = spr_player;
}

if (keyboard_check(ord("H"))){
	hp = 200;
}


if(hp < 200){
	hp+=0.0083;
}

if(x > nextInteraction){
	if(nextInteraction == 1500){
		canMove = false;
		obj_hannah.alarm[0] = 1;
		hasPencil = true;
	} else if(nextInteraction == 2500){
		canMove = false;
		obj_nanami.alarm[0] = 1;
		hasWifi = true;
	} else if(nextInteraction == 3500){
		canMove = false;
		obj_reyyan.alarm[0] = 1;
		vilOnScreen = true;
		canAttack = true;
	} else if(nextInteraction == 4500){
		canMove = false;
		hasChem = true;
		canAttack = false;
		obj_migs.alarm[0] = 1;
	} else if(nextInteraction == 5500){
		canMove = false;
		hasCleaning = true;
		obj_pranav.alarm[0] = 1;
	} else if(nextInteraction == 6500){
		canMove = false;
		obj_dharma.alarm[0] = 1;
		vilOnScreen = true;
		canAttack = true;
	} else if(nextInteraction == 7500){
		canMove = false;
		hasShower = true;
		canAttack = false;
		obj_migt.alarm[0] = 1;
	} else if(nextInteraction == 8500){
		canMove = false;
		hasPolymorphisim = true;
		obj_andrewg.alarm[0] = 1;
	} else if(nextInteraction == 9500){
		canMove = false;
		canAttack = true;
		vilOnScreen = true;
		obj_thomas.alarm[0] = 1;
		obj_zohar.alarm[0] = 1;
		nextInteraction-= 500;
	}
	nextInteraction += 1000;
} 

if(canAttack){
	if(hasPolymorphisim && keyboard_check(ord("6"))){
		instance_create_layer(x + 250, y - 20, "Instances", units_obj);
		instance_create_layer(x + 250, y, "Instances", units_obj);
		instance_create_layer(x + 250, y + 20, "Instances", units_obj);
	} if(hasShower && keyboard_check(ord("5"))){
		instance_create_layer(x + 250, y - 20, "Instances", showers_obj);
		instance_create_layer(x + 250, y, "Instances", showers_obj);
		instance_create_layer(x + 250, y + 20, "Instances", showers_obj);
	} if(hasCleaning && keyboard_check(ord("4"))){
		instance_create_layer(x + 250, y - 20, "Instances", cleaning_obj);
		instance_create_layer(x + 250, y, "Instances", cleaning_obj);
		instance_create_layer(x + 250, y + 20, "Instances", cleaning_obj);
	} if(hasChem && keyboard_check(ord("3"))){
		instance_create_layer(x + 250, y - 20, "Instances", tests_obj);
		instance_create_layer(x + 250, y, "Instances", tests_obj);
		instance_create_layer(x + 250, y + 20, "Instances", tests_obj);
	} if(hasWifi && keyboard_check(ord("2"))){
		instance_create_layer(x + 250, y - 20, "Instances", wifis_obj);
		instance_create_layer(x + 250, y, "Instances", wifis_obj);
		instance_create_layer(x + 250, y + 20, "Instances", wifis_obj);
	} if(hasPencil && keyboard_check(ord("1"))){
		instance_create_layer(x + 250, y - 20, "Instances", pencils_obj);
		instance_create_layer(x + 250, y, "Instances", pencils_obj);
		instance_create_layer(x + 250, y + 20, "Instances", pencils_obj);
	} canAttack = false;
}

if (x > 9900){
	room_goto(endRoom);
}