if mouse_check_button_pressed(mb_left) 
{
	image_index = 1
	if is_watering = false
	{
		audio_play_sound(snd_leyka,1,false,random(1))
		instance_create_depth(x-26,y+26,-10,obj_Water)
		is_watering = true;
	}
}

if mouse_check_button_released(mb_left)
{
	image_index = 0;
	is_watering = false
}