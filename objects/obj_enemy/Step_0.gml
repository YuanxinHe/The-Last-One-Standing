if(hasDead){
	with(instance_create_layer(x,y,"Enemy",obj_enemy_dead)){
		hsp = lengthdir_x(3,other.hitFrom);
		vsp = lengthdir_y(3,other.hitFrom);
		image_xscale = other.image_xscale;
		image_yscale = other.image_yscale;
	}
	
	instance_destroy();
}else{
	direction = point_direction(x,y,obj_player.x,obj_player.y);
	speed = 2;

	var facingLeft = (obj_player.x - x) < 0;
	if(facingLeft){
		image_xscale = size;
	}else{
		image_xscale = -size;
	}
	image_yscale = size;
}