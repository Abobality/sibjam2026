if keyboard_check_pressed(ord("Q"))
{
	inventoryState = INVENTORY.NOTHING;
}
if keyboard_check_pressed(ord("1"))
{
	inventoryState = INVENTORY.SEEDS;
}
if keyboard_check_pressed(ord("2"))
{
	inventoryState = INVENTORY.LEYKA;
}
if keyboard_check_pressed(ord("3"))
{
	inventoryState = INVENTORY.GLOVE;
}
if keyboard_check_pressed(ord("4"))
{
	inventoryState = INVENTORY.SELLTELEJKA;
}

if keyboard_check_pressed(ord("5"))
{
	inventoryState = INVENTORY.SHOVEL;
}




switch(inventoryState)
{
	case 0:
		itemPutBack(320,32,obj_Glove)
		itemPutBack(256,32,obj_Leyka)
		itemPutBack(192,32,obj_Seeds)
		itemPutBack(384,32,obj_Sell)
		itemPutBack(448,32,obj_Shovel)
		break;
	
	case 1:
		itemPutBack(320,32,obj_Glove)
		itemPutBack(256,32,obj_Leyka)
		itemPutBack(384,32,obj_Sell)
		itemPutBack(448,32,obj_Shovel)
		plant();
		break;
	
	case 2:
		itemPutBack(320,32,obj_Glove)
		itemPutBack(192,32,obj_Seeds)
		itemPutBack(384,32,obj_Sell)
		itemPutBack(448,32,obj_Shovel)
		water();
		break;
		
	case 3:
		itemPutBack(256,32,obj_Leyka)
		itemPutBack(192,32,obj_Seeds)
		itemPutBack(384,32,obj_Sell)
		itemPutBack(448,32,obj_Shovel)
		merge();
		break;
		
	case 4:
		itemPutBack(320,32,obj_Glove)
		itemPutBack(256,32,obj_Leyka)
		itemPutBack(192,32,obj_Seeds)
		itemPutBack(448,32,obj_Shovel)
		sell();
		break;
		
	case 5:
		itemPutBack(320,32,obj_Glove)
		itemPutBack(256,32,obj_Leyka)
		itemPutBack(192,32,obj_Seeds)
		itemPutBack(384,32,obj_Sell)
		feed();
		break;
}