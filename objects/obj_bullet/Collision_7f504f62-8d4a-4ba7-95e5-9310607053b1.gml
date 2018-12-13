with(instance_create_layer(x,y,"Fire",obj_bullet_end)){
	image_angle = other.image_angle;
	direction = other.direction;
	speed = 1;
}
instance_destroy();