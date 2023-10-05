move_bounce_all(true)
direction = point_direction(obj_paddle.x,obj_paddle.y,x,y)
speed +=0.2;

if (presa) {
    x = obj_paddle.x; 
    y = obj_paddle.y - 2;
	speed = 0
}
