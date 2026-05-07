var nearest = instance_nearest(x,y,obj_Spot)
x = nearest.x;
y = nearest.y;
xprev = x;
yprev = y;
growpoints = 0;


type = struct.type;
cost += struct.cost  * (struct.mult + global.costMultipler);
sprite_index = struct.sprite;
feed = struct.feed;
grow_speed = struct.grow_speed;
element = struct.family;

if type = "basic" or type = "legend"
{
	image_speed = 0;
}

depth = -y

grow_up = function()
{
	if irandom_range(0,1) == 1 and (type = "basic" or type = "legend")
	{
		if image_index < sprite_get_number(sprite_index)-1
		{
			if growpoints < grow_speed
			{
				growpoints++;
			}else{
				growpoints = 0;
				image_index++;	
			}
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
			struct: global.romashka,
			cost: 100
		})
		self_burn(flower2.xprev,flower2.yprev);
	}
	else if (flower1.struct = global.holopenyo and flower2.struct = global.holopenyo)
	{
		instance_create_depth(flower2.xprev,flower2.yprev,-1,obj_Plant,
		{
			struct: global.holopenyo,
			cost: 50
		})
		effect_create(flower2.xprev,flower2.yprev,obj_Fire,true,noone)
		self_burn(flower2.xprev,flower2.yprev);
	}
	else if (flower1.struct = global.rainflower and flower2.struct = global.rainflower)
	{
		instance_create_depth(flower2.xprev,flower2.yprev,-1,obj_Plant,
		{
			struct: global.rainflower,
			cost: 50
		})
		effect_create(flower2.xprev,flower2.yprev,obj_Water,true,noone)
		self_burn(flower2.xprev,flower2.yprev);
	}
	else if (flower1.struct = global.romashka and flower2.struct = global.holopenyo)  or (flower1.struct = global.holopenyo and flower2.struct = global.romashka)
	{
		instance_create_depth(flower2.xprev,flower2.yprev,-1,obj_Plant,
		{
			struct: global.flameflower
		})
		effect_create(flower2.xprev,flower2.yprev,obj_Fire,false,noone)
		self_burn(flower2.xprev,flower2.yprev);
	}
	else if (flower1.struct = global.romashka and flower2.struct = global.rainflower)  or (flower1.struct = global.rainflower and flower2.struct = global.romashka)
	{
		instance_create_depth(flower2.xprev,flower2.yprev,-1,obj_Plant,
		{
			struct: global.stormflower
		})
		effect_create(flower2.xprev,flower2.yprev,obj_Water,false,noone)
		self_burn(flower2.xprev,flower2.yprev);
	}
	else if (flower1.struct = global.rainflower and flower2.struct = global.holopenyo) or (flower1.struct = global.holopenyo and flower2.struct = global.rainflower)
	{
		instance_create_depth(flower2.xprev,flower2.yprev,-1,obj_Plant,
		{
			struct: global.oduvanchik
		})
		if obj_Slime.image_index = 1
		{
			oduvanchik_create(flower2.xprev,flower2.yprev,false)
		}else{
			oduvanchik_create(flower2.xprev,flower2.yprev,true)
		}
		self_burn(flower2.xprev,flower2.yprev);
	}
}

effect_create = function(xpos,ypos,target,solo,check)
{
	var dirs = [
		[xpos+64,ypos],[xpos-64,ypos],[xpos,ypos+64],[xpos,ypos - 64]
	]
	
	if solo
	{
		var index = irandom(3)
		if !position_meeting(dirs[index][0],dirs[index][1],check)
		{
			instance_create_depth(dirs[index][0],dirs[index][1],-1,target)
		}
	}else{
		var index = 0;
		
		while index < 4
		{
			if !position_meeting(dirs[index][0],dirs[index][1],check)
			{
				instance_create_depth(dirs[index][0],dirs[index][1],-1,target)
			}
			
			index++
		}
	}
}

oduvanchik_create = function(xpos,ypos,solo)
{
	var dirs = [
		[xpos+64,ypos],[xpos-64,ypos],[xpos,ypos+64],[xpos,ypos - 64]
	]
	
	if solo
	{
		var index = irandom(3)
		if !position_meeting(dirs[index][0],dirs[index][1],obj_Plant) and position_meeting(dirs[index][0],dirs[index][1],obj_Spot)
		{
			instance_create_depth(dirs[index][0],dirs[index][1],-1,obj_Plant,
			{
				struct: global.oduvanchik
			})
		}
	}else{
		var index = 0;
		
		while index < 4
		{
			if !position_meeting(dirs[index][0],dirs[index][1],obj_Plant) and position_meeting(dirs[index][0],dirs[index][1],obj_Spot)
			{
				instance_create_depth(dirs[index][0],dirs[index][1],-1,obj_Plant,
				{
					struct: global.oduvanchik
				})
			}
			
			index++
		}
	}
}

self_burn = function(xpos,ypos)
{
	if obj_Slime.image_index = 2
	{
		if irandom(2) = 1
		{
			instance_create_depth(xpos,ypos,-10,obj_Fire)
		}
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