player = obj_player;
player_x = player.x;
instance_create_layer(player_x, 530, "Instances", textBox_obj);
instance_create_layer(player_x, 530, "Instances", reyyanText_obj);
textBox_obj.alarm[0] = 120;
reyyanText_obj.alarm[0] = 120;