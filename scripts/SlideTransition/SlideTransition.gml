/// @desc SlideTransition(mode, targetRoom)
/// @arg Mode set the transition mode bewteen next, goto and restart
/// @arg TargetRoom set the target room when use goto mode

with(obj_transition){
	mode = argument[0];
	if(argument_count > 1) targetRoom = argument[1];
}