/// @description Check per frame
if(hasControl){
	keyRight = keyboard_check(vk_right) || keyboard_check(ord("D"));
	keyLeft = keyboard_check(vk_left) || keyboard_check(ord("A"));
	keySpace = (keyboard_check(vk_space)) || keyboard_check(ord("W"));

	if(keyRight || keyLeft || keySpace){
		usingController = false;
	}

	if(abs(gamepad_axis_value(0, gp_axislh)) > 0.2 
	|| abs(gamepad_axis_value(0, gp_axislv)) > 0.2 ){
		usingController = true;	
		keyRight = max(0, gamepad_axis_value(0, gp_axislh));
		keyLeft = abs(min(0,gamepad_axis_value(0,gp_axislh)));	
	}

	if(gamepad_button_check(0,gp_face1) || gamepad_axis_value(0,gp_axislv) < -0.5){
		usingController = true;
		keySpace = 1
	}
}else{
	keyRight = 0;
	keyLeft = 0;
	keySpace = 0;
}

vsp = (vsp >= gravMax)? gravMax: vsp + grav;

if(keySpace && !jump){
vsp = -jumpSpeed;
audio_sound_pitch(snd_jump,choose(0.5,0.75,1));
audio_play_sound(snd_jump,10,false);
}

var moving = keyRight - keyLeft;

//if(moving < 0){	
//	hsp = (hsp == 0)? -moveSpeed : hsp - acceleration;
//	hsp =  (hsp <= -maxSpeed)? -maxSpeed : hsp;
//}else if (moving > 0){

//	hsp = (hsp == 0)? moveSpeed : hsp + acceleration;
//	hsp =  (hsp >= maxSpeed)? maxSpeed : hsp;
//}else{
//	hsp = 0;
//}

hsp = moving * moveSpeed;

if(place_meeting(x,y + vsp,obj_col)){
	while(!place_meeting(x, y + sign(vsp),obj_col)){
		y += sign(vsp)
	}
	vsp = 0;
}

y += vsp;

if(place_meeting(x + hsp, y,obj_col)){
	while(!place_meeting(x + sign(hsp), y, obj_col)){
		x += sign(hsp);	
	}
	
	hsp = 0;
}

x += hsp;
var previousJumpStatus = jump;
jump = !place_meeting(x,y + 1,obj_col);


//Animation
if(!jump){
	if(hsp != 0){
		sprite_index = (abs(hsp) < runSpritePoint)? spr_player_walk
					: spr_player_run;		
	}else{
		sprite_index = spr_player_idle;
	}
}else{
	if(vsp < 0)
		sprite_index = spr_player_jump;
	else
		sprite_index = spr_player_falling;
}

if(hsp !=0) image_xscale = sign(hsp)*size;
image_yscale = size;

if(sprite_index == spr_player_run && (floor(image_index) == 2) || floor(image_index) == 6){
	audio_play_sound(choose(snd_foot1,snd_foot2,snd_foot3,snd_foot4),1,false);
}

if(previousJumpStatus !=jump && !jump){
	audio_sound_pitch(snd_landing,choose(0.5,1,1.5));
	audio_play_sound(snd_landing,10,false);
}