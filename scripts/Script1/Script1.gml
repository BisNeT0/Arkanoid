// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function colisaobloco(){
	move_bounce_all(true)
	instance_destroy(other)
	audio_play_sound(snd_colisao,5,false)
	global.pontos +=10
	colisaoblocoshot()
}

function colisaoblocoFireBall(){
	instance_destroy(other)
	audio_play_sound(snd_colisao,5,false)
	global.pontos +=10
	colisaoblocoShotFireBall()
}

function colisaoblocoShotFireBall(){
	
	instance_destroy(other)
	audio_play_sound(snd_colisao,5,false)
	global.pontos +=10
	power_up()
}

function colisaoblocoshot(){
	move_bounce_all(true)
	instance_destroy(other)
	audio_play_sound(snd_colisao,5,false)
	global.pontos +=10
	power_up()
}

function existemblocos(){	
	
	if((!instance_exists(obj_yellow )) 
	and (!instance_exists(obj_blue ) )
	and (!instance_exists(obj_green ) )
	and (!instance_exists(obj_orange ) )
	and (!instance_exists(obj_pink ) )
	and (!instance_exists(obj_purple )) 
	and (!instance_exists(obj_dark_green )) 
	and (!instance_exists(obj_gray_dark )) 
	and (!instance_exists(obj_gray_light )) 
	and (!instance_exists(obj_gray_more_light )) 
	and (!instance_exists(obj_black )) 
	and (!instance_exists(obj_white )) 
	and (!instance_exists(obj_red ))){
		if(room!= lv_05){
			room_goto_next()
			audio_play_sound(snd_level_up,5,false)
		}else{
			show_message("Fim de jogo")
			instance_destroy(obj_ball)
			global.fimjogo = true
		}
		
		
	}

}

function power_up(){
	randomize()
	var _sorteio = irandom_range(0,9)
	if(_sorteio == 1 or _sorteio = 2){
		instance_create_layer(obj_ball.x, obj_ball.y ,"Instances",obj_power_up)
	}

}

function nine_degrees(){
	if(obj_ball.direction == obj_wall.direction){
		obj_ball.direction = random(360)
	}
}