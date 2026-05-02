ps_rain = -1;
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