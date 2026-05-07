enum INVENTORY
{
	NOTHING,
	SEEDS,
	LEYKA,
	GLOVE,
	SELLTELEJKA,
	SHOVEL
}

global.plantSpawnVariaty = 0

inventoryState = INVENTORY.NOTHING

plant = function()
{
	var checkSpot = position_meeting(mouse_x,mouse_y,obj_Spot)
	var checkEmpty = position_meeting(mouse_x,mouse_y,obj_Plant)
	var checkSpotNearest = instance_nearest(mouse_x,mouse_y,obj_Spot)
	
	with obj_Seeds
	{
		x = mouse_x;
		y = mouse_y;
	}
	
	if checkSpot and checkSpotNearest.image_index > 0 and !checkEmpty
	{
		if mouse_check_button_pressed(mb_left) and global.cash >= 50
		{
			global.cash -= 50
			audio_play_sound(snd_shovel,1,false)
			instance_create_depth(mouse_x,mouse_y,-1,obj_Plant,
			{
				struct: global.planrsPool[irandom(global.plantSpawnVariaty)]
			})
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
	
	with obj_Sell
	{
		x = mouse_x;
		y = mouse_y;
	}
	
	if checkPlantChecker and (checkPlantNearest.image_index >= 3 or checkPlantNearest.type = "hybrid")
	{
		if mouse_check_button_pressed(mb_left)
		{
			audio_play_sound(snd_Money,1,false)
			global.cash += checkPlantNearest.cost
			instance_destroy(checkPlantNearest)
			show_debug_message("sold!")
		}
	}
}

water = function()
{
	with obj_Leyka
	{
		x = mouse_x;
		y = mouse_y;
	}
}

feed = function()
{
	var checkPlantChecker = position_meeting(mouse_x,mouse_y,obj_Plant)
	var checkPlantNearest = instance_nearest(mouse_x,mouse_y,obj_Plant)
	
	with obj_Shovel
	{
		x = mouse_x;
		y = mouse_y;
	}
	
	if checkPlantChecker
	{
		if mouse_check_button_pressed(mb_left) and  (checkPlantNearest.image_index >= 3 or checkPlantNearest.type = "hybrid")
		{
			audio_play_sound(snd_shovel,1,false)
			checkPlantNearest.gotoFeed()
			instance_destroy(checkPlantNearest)
			show_debug_message("fed!")
		}
	}
}

itemPutBack = function(xpos,ypos,item)
{
	item.x = xpos;
	item.y = ypos;
}