with(instance_create_layer(x,y,"Fire",obj_bullet_end)){
	image_angle = other.image_angle;
	direction = other.direction;
	speed = 1;
}

with(other){
	if(!hasDead) hp -= other.damage;
	if(hp <= 0 && !hasDead){
		hasDead = true;
		direction = other.direction;
	}
}

instance_destroy();