enum INVENTORY
{
	NOTHING,
	SEEDS,
	LEYKA,
	GLOVE,
	SELLTELEJKA,
	SHOVEL
}

inventoryState = INVENTORY.SEEDS

plant = function()
{
	var checkSpot = position_meeting(mouse_x,mouse_y,obj_Spot)
	var checkEmpty = position_meeting(mouse_x,mouse_y,obj_Plant)
	var checkSpotNearest = instance_nearest(mouse_x,mouse_y,obj_Spot)
	
	if checkSpot and checkSpotNearest.image_index > 0 and !checkEmpty
	{
		if mouse_check_button_pressed(mb_left)
		{
			instance_create_depth(mouse_x,mouse_y,-1,obj_Plant)
			show_debug_message("spawned!")
		}
	}
}

merge = function()
{ 
	var checkPlantChecker = position_meeting(mouse_x,mouse_y,obj_Plant)
	var checkPlantNearest = instance_nearest(mouse_x,mouse_y,obj_Plant)
	
	with obj_Glove
	{
		x = mouse_x;
		y = mouse_y;
	}
}

sell = function()
{
	var checkPlantChecker = position_meeting(mouse_x,mouse_y,obj_Plant)
	var checkPlantNearest = instance_nearest(mouse_x,mouse_y,obj_Plant)
	
	if checkPlantChecker
	{
		if mouse_check_button_pressed(mb_left)
		{
			instance_destroy(checkPlantNearest)
			show_debug_message("sold!")
		}
	}
}

itemPutBack = function(xpos,ypos,item)
{
	item.x = xpos;
	item.y = ypos;
}