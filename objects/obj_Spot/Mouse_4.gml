if image_index = 0 and visible == true
{
	image_index = irandom_range(1,3)
	obj_Grid.expansion(((x - 128) div 64),((y - 96) div 64))
	show_debug_message(((x - 128) div 64))
	show_debug_message(((y - 96) div 64))
}

