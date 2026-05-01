tick+= 0.1

if tick >= global.tickrate
{
	tick = 0;
	with obj_Plant
	{
		grow_up();
	}
}