global.vidas --
if(global.vidas<1){
	show_message_async("GAME OVER")
	room_goto(lv_02)
	global.pontos = 0
	global.vidas = 3
	audio_play_sound(snd_game_over,5,false)
}
else{
	
	instance_destroy();
	instance_destroy(obj_paddle);
	instance_create_layer(513,640,"Instances",obj_ball)
	instance_create_layer(513,660,"Instances",obj_paddle)
	audio_play_sound(snd_derrota,5,false)
	
}



