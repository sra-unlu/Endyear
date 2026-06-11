player = obj_player;
player_x = player.x;
player_canAttack = player.canAttack;
player_canMove = player.canAttack;
player_vilOnScreen = player.vilOnScreen;
hp = 100;
instance_create_layer(x, y + 70, "Instances", healthReyyan);
instance_create_layer(x, y + 70, "Instances", healthBarBorder_obj);