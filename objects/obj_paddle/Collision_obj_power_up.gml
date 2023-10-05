if(obj_power_up.randomNumber == 1){
	instance_create_layer(x-64,y,"Instances",obj_shot)
	instance_create_layer(x+64,y,"Instances",obj_shot)
}

if(obj_power_up.randomNumber == 2){
	instance_create_layer(x,y,"Instances",obj_fireball)
}

if(obj_power_up.randomNumber == 3){
	obj_ball.presa = true
}

instance_destroy(other)