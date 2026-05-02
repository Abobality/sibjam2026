image_speed = 0;
var nearest = instance_nearest(x,y,obj_Spot)
x = nearest.x;
y = nearest.y;
xprev = x;
yprev = y;

type = struct.type;
cost = struct.cost;
sprite_index = struct.sprite;
feed = struct.feed;

depth = -y

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
	
	if collision != noone and collision.type = "basic" and self.type = "basic"
	{
		combo(self,collision )
		instance_destroy(collision);
		instance_destroy(self);
	}else{
		x = xprev;
		y = yprev;
	}
}

gotoFeed = function()
{
	global.feedArray[feed]++
}

combo = function(flower1,flower2)
{
	if (flower1.struct = global.romashka and flower2.struct = global.romashka)
	{
		instance_create_depth(flower2.xprev,flower2.yprev,-1,obj_Plant,
		{
			struct: global.romashka
		})
	}
	else if (flower1.struct = global.holopenyo and flower2.struct = global.holopenyo)
	{
		instance_create_depth(flower2.xprev,flower2.yprev,-1,obj_Plant,
		{
			struct: global.holopenyo
		})
	}
	else if (flower1.struct = global.holopenyo and flower2.struct = global.holopenyo)
	{
		instance_create_depth(flower2.xprev,flower2.yprev,-1,obj_Plant,
		{
			struct: global.holopenyo
		})
	}
	else if (flower1.struct = global.rainflower and flower2.struct = global.rainflower)
	{
		instance_create_depth(flower2.xprev,flower2.yprev,-1,obj_Plant,
		{
			struct: global.rainflower
		})
	}
	else if (flower1.struct = global.romashka and flower2.struct = global.holopenyo)  or (flower1.struct = global.holopenyo and flower2.struct = global.romashka)
	{
		instance_create_depth(flower2.xprev,flower2.yprev,-1,obj_Plant,
		{
			struct: global.flameflower
		})
	}
	else if (flower1.struct = global.romashka and flower2.struct = global.rainflower)  or (flower1.struct = global.rainflower and flower2.struct = global.romashka)
	{
		instance_create_depth(flower2.xprev,flower2.yprev,-1,obj_Plant,
		{
			struct: global.stormflower
		})
	}
	else if (flower1.struct = global.rainflower and flower2.struct = global.holopenyo) or (flower1.struct = global.holopenyo and flower2.struct = global.rainflower)
	{
		instance_create_depth(flower2.xprev,flower2.yprev,-1,obj_Plant,
		{
			struct: global.oduvanchik
		})
	}
}

// Получаем ссылки на переменные внутри шейдера
uni_time     = shader_get_uniform(shd_sway, "u_time");
uni_bottom_y = shader_get_uniform(shd_sway, "u_bottom_y");
uni_height   = shader_get_uniform(shd_sway, "u_height");
uni_amount   = shader_get_uniform(shd_sway, "u_amount");

// Настройки покачивания
time_val = 0;
sway_speed = random_range(0.01,0.05);   // Скорость ветра (чем больше, тем быстрее качается)
sway_amount = random_range(3.0,6.0);  // Максимальное отклонение макушки в пикселях