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
		image_speed = 1;
	}

	x += hsp;
	y += vsp;
}

if(image_index == image_number - 1 && !waitingRestart) {
	image_speed = 0
	alarm[0] = 30;
	waitingRestart = true;
};