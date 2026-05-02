if image_index = 0 and visible == true
{
	image_index = 1
	obj_Grid.expansion(((x - 128) div 64),((y - 96) div 64))
	global.slotCost = floor(global.slotCost * 1.2);
}

