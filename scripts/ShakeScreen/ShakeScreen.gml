/// @decs ScreenShake(Strength, frames)
/// @arg Strength set the strength of the shake (measured by pixels)
/// @arg Frames set the length of the shake (1 second = 60 frames at 60 FPS)

if(instance_exists(obj_camera)){
	with(obj_camera){
		if(argument0 > shakeRemain){
		shakeStrength = argument0;
		shakeRemain = argument0;
		shakeLength = argument1;		
		}
	}
}