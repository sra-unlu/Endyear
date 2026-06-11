sprite_index = spr_hannah;
move = false;
instance_create_layer(player_x, 530, "Instances", textBox_obj);
instance_create_layer(player_x, 530, "Instances", hannahText_obj);
instance_create_layer(player_x - 250, 60, "Instances", pencilAttack_obj);
textBox_obj.alarm[0] = 120;
hannahText_obj.alarm[0] = 120;
player.alarm[1] = 120;