image_speed = 0;
var nearest = instance_nearest(x,y,obj_Spot)
x = nearest.x;
y = nearest.y;
xprev = x;
yprev = y;
type = "basic";

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

merge = function()
{
	var collision = collision_rectangle(x-8,y-8,x+8,y+8,obj_Plant,false,true)
	
	if collision != noone and collision.type = "basic"
	{
		instance_create_depth(collision.x, collision.y,-1,obj_Plant,
		{
			sprite_index:spr_Hybrid,
			type: "hybrid"
		})
		instance_destroy(collision);
		instance_destroy(self);
	}else{
		x = xprev;
		y = yprev;
	}
}