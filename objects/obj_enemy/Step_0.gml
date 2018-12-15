if(hasDead){
	with(instance_create_layer(x,y,"Enemy",obj_enemy_dead)){
		hsp = lengthdir_x(3,other.hitFrom);
		vsp = lengthdir_y(3,other.hitFrom);
	}
	
	instance_destroy();
}

direction = point_direction(x,y,obj_player.x,obj_player.y);
speed = 2;