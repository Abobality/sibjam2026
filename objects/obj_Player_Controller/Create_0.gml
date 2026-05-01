enum INVENTORY
{
	NOTHING,
	SEEDS,
	LEYKA,
	GLOVE,
	SELLTELEJKA,
	SHOVEL
}

mergepull = []
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
	
	if checkPlantChecker
	{
		if mouse_check_button_pressed(mb_left)
		{
			array_push(mergepull,checkPlantNearest)
			checkPlantNearest.image_blend = c_blue;
			show_debug_message("combo")
			show_debug_message(mergepull)
			
			if array_length(mergepull) == 2
			{
				array_push(mergepull,checkPlantNearest)
				instance_destroy(mergepull[0])
				array_delete(mergepull,0,2)
				show_debug_message(mergepull)
				show_debug_message("merged!")
			}
		}
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