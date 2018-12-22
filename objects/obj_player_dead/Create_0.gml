image_index = 0;
image_speed = 0;
ShakeScreen(15,60);
audio_play_sound(snd_dead,4,false);
game_set_speed(30,gamespeed_fps);
with(obj_camera) follow = other.id;