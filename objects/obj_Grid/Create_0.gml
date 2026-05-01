expand = function(indexX,indexY)
{
	if (indexX >= 0 and indexY >= 0)
	{
		if indexY < array_length(global.grid) and indexX < array_length(global.grid[indexY]) 
		{
			global.grid[indexY][indexX] = 1;
		}
	}else{
		return;	
	}
}

expansion = function(indexX,indexY)
{
	expand(indexX-1,indexY);
	expand(indexX+1,indexY);
	expand(indexX,indexY-1);
	expand(indexX,indexY+1);
	show_debug_message(global.grid)
	
	with obj_Spot
	{
		spotUpdate();
	}
}