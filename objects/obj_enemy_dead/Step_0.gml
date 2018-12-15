if(!stop){
	if(place_meeting(x + hsp,y,obj_col)){
		while(!place_meeting(x+sign(hsp),y,obj_col)){
			x += sign(hsp)
		}
		hsp = 0;
	}



	vsp += grav;
	if(place_meeting(x,y+vsp,obj_col)){
		while(!place_meeting(x,y+sign(vsp),obj_col)){
			y += sign(vsp)
		}
		hsp = 0;
		vsp = 0;
		stop = true;
	}

	x += hsp;
	y += vsp;
}