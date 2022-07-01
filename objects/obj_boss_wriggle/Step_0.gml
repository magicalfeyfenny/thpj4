event_inherited();

if ( global.combat_mode ) {
	if (!pathing) {
		path_start(pth_wrigglewalk, 3, path_action_reverse, false);
		pathing = true;	
	}
	butterfly--;
	if (butterfly <= 0) {
		bullet_a = instance_create_layer(x, y, "lyr_ground", obj_wriggle_butterfly);
		with (bullet_a) {
			lifetime = 600;
			speed = 2;
			direction = point_direction(x, y, obj_marisa.x, obj_marisa.y) + 45;
			
		}
		bullet_b = instance_create_layer(x, y, "lyr_ground", obj_wriggle_butterfly);
		with (bullet_b) {
			lifetime = 600;
			speed = 2;
			direction = point_direction(x, y, obj_marisa.x, obj_marisa.y) - 45;
		}
		butterfly = 420;
	}	
}





