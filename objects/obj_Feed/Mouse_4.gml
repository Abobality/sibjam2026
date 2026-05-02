if global.feedArray[index] > 0
{
	global.feedArray[index]--;
	
	switch index
	{
		case 0:
			obj_Slime.basic();
			break;
		
		case 1:
			obj_Slime.holopenyo();
			break;
			
		case 2:
			obj_Slime.rainflower();
			break;
			
		case 3:
			obj_Slime.fire();
			break;
			
		case 4:
			obj_Slime.rain();
			break;
			
		case 5:
			obj_Slime.oduvanchiki();
			break;
			
		case 6:
			obj_Slime.lavandoviyraf();
			break;
	}
}