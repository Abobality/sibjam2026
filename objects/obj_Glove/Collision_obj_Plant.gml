if holding == noone and mouse_check_button_pressed(mb_left) and other.image_index = sprite_get_number(other.sprite_index)-1
{
	holding = other
}

if holding == other and mouse_check_button(mb_left)
{
	image_index = 1;
	other.x = x;
	other.y = y;
}

if mouse_check_button_released(mb_left)
{
	audio_play_sound(snd_shovel,1,false)
	other.merge();
	holding = noone;
	image_index = 0;
	x = 320;
	y = 32;
}