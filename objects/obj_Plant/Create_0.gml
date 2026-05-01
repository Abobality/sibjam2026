image_speed = 0;
var nearest = instance_nearest(x,y,obj_Spot)
x = nearest.x;
y = nearest.y;

grow_up = function()
{
	if irandom_range(0,1) == 1
	{
		if image_index < sprite_get_number(sprite_index)-1
		{
			image_index++;
		}else{
			return	
		}
	}
}