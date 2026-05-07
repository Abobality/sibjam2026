if image_index = 0 and visible == true and obj_Player_Controller.inventoryState = INVENTORY.NOTHING and global.slotCost <= global.cash
{
	global.cash -= global.slotCost
	image_index = 1
	obj_Grid.expansion(((x - 128) div 64),((y - 96) div 64))
	global.slotCost = floor(global.slotCost * 1.2);
}

