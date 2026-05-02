if holding == noone and mouse_check_button_pressed(mb_left)
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
	other.merge();
	holding = noone;
	image_index = 0;
	x = 128;
	y = 32;
}