if keyboard_check_pressed(ord("Q"))
{
	inventoryState = INVENTORY.NOTHING;
}
if keyboard_check_pressed(ord("W"))
{
	inventoryState = INVENTORY.SEEDS;
}
if keyboard_check_pressed(ord("E"))
{
	inventoryState = INVENTORY.GLOVE;
}
if keyboard_check_pressed(ord("S"))
{
	inventoryState = INVENTORY.SELLTELEJKA;
}

if keyboard_check_pressed(ord("F"))
{
	inventoryState = INVENTORY.SHOVEL;
}




switch(inventoryState)
{
	case 0:
		itemPutBack(128,32,obj_Glove)
		break;
	
	case 1:
		itemPutBack(128,32,obj_Glove)
		plant();
		break;
		
	case 3:
		merge();
		break;
		
	case 4:
		itemPutBack(128,32,obj_Glove)
		sell();
		break;
		
	case 5:
		itemPutBack(128,32,obj_Glove)
		feed();
		break;
}