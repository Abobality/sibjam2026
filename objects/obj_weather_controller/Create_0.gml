ps_rain = -1;
weather = 0;
weatherStart = function(target)
{
	ps_rain = part_system_create(target)
	part_system_position(ps_rain,288,-32)
	part_system_automatic_draw(ps_rain,true)
	part_system_automatic_update(ps_rain,true)
}
particlesClear = function()
{
	if ps_rain != -1
	{
		part_system_clear(ps_rain)
		part_system_destroy(ps_rain)
		ps_rain = -1
	}
}

create_water = function()
{
	if weather = 1
	{
		for(var i = 0;i < 7;i++)
		{
			for(var j = 0;j < 4;j++)
			{
				instance_create_depth(128 + 64 * i,96 + 64 * j,-10,obj_Water)
			}
		}
	}
}