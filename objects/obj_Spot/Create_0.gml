image_speed = 0;

spotUpdate = function()
{
	switch global.grid[((y - 96) div 64)][((x - 128) div 64)]
	{
		case 0:
			visible = false;
			break;
			
		case 1:
			visible = true;
			break;
	}
}

spotUpdate();