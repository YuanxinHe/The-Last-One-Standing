if(hasDead){
	with(instance_create_layer(x,y,"Enemy",obj_enemy_dead)){
		hsp = lengthdir_x(3,other.hitFrom);
		vsp = lengthdir_y(3,other.hitFrom);
		image_xscale = other.image_xscale;
		image_yscale = other.image_yscale;
	}
	audio_play_sound(snd_enemy_dead,10,false);
	instance_destroy();
}else{
	var target = instance_exists(obj_player)? obj_player: obj_player_dead;
	direction = point_direction(x,y,target.x,target.y);
	speed = 2;

	var facingLeft = (target.x - x) < 0;
	if(facingLeft){
		image_xscale = size;
	}else{
		image_xscale = -size;
	}
	image_yscale = size;
}