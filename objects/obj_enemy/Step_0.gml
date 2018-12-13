if(hasDead && sprite_index != spr_enemy_dead){
	sprite_index = spr_enemy_dead;
}

if(hasDead) vsp=3;

if(place_meeting(x,y+vsp,obj_col)){
	while(!place_meeting(x,y+sign(vsp),obj_col)){
		y += sign(vsp)
	}
	vsp = 0;
}

y+= vsp;