image_speed = 0;

enum SLIMESTATES
{
	BASIC,
	ODUVANCHIK,
	FIRE,
	RAIN,
	EXAUSTED,
	STRANGE,
	AVVVVVV
}

basic = function()
{
	audio_stop_all()
	global.slimeText = "chamomile cost upped"
	global.costMultipler += 0.05
	obj_weather_controller.weather = 0;
	obj_weather_controller.particlesClear()
	image_index = 0
	layer_background_blend(layer_background_get_id("Background"),c_black)
}

rainflower = function()
{
	audio_stop_all()
	global.slimeText = "rainflower cost upped"
	global.waterCostMultipler += 0.05
	obj_weather_controller.weather = 0;
	obj_weather_controller.particlesClear()
	image_index = 4
	layer_background_blend(layer_background_get_id("Background"),c_black)
}

holopenyo = function()
{
	audio_stop_all()
	global.slimeText = "holopenyo cost upped"
	global.flameCostMultipler += 0.05
	obj_weather_controller.weather = 0;
	obj_weather_controller.particlesClear()
	image_index = 6
	layer_background_blend(layer_background_get_id("Background"),c_black)
}

rain = function()
{
	audio_play_sound(snd_Rain,1,true)
	global.slimeText = "rain is started!"
	global.waterCostMultipler+=0.2
	global.flameCostMultipler-=0.2
	global.oduvanchikCostMultipler +=0.05
	
	obj_weather_controller.weather = 1;
	image_index = 3
	obj_weather_controller.particlesClear()
	obj_weather_controller.weatherStart(pt_Rain)
	layer_background_blend(layer_background_get_id("Background"),#000916)
}

fire = function()
{
	audio_stop_all()
	global.slimeText = "plants can burn!"
	global.waterCostMultipler-=0.2
	global.flameCostMultipler+=0.2
	global.oduvanchikCostMultipler -=0.05
	obj_weather_controller.weather = 0;
	obj_weather_controller.particlesClear()
	image_index = 2
	layer_background_blend(layer_background_get_id("Background"),#180000)
}

oduvanchiki = function()
{
	audio_stop_all()
	global.slimeText = "dandelions are growing!"
	global.waterCostMultipler+=0.1
	global.oduvanchikCostMultipler +=0.1
	obj_weather_controller.weather = 0;
	obj_weather_controller.particlesClear()
	obj_weather_controller.weatherStart(pt_Oduvanchik_Rain)
	image_index = 1
	layer_background_blend(layer_background_get_id("Background"),#051313)
}

lavandoviyraf = function()
{
	audio_stop_all()
	global.slimeText = "The end!. Thanks for playing!"
	global.waterCostMultipler+=3
	global.flameCostMultipler+=3
	global.oduvanchikCostMultipler +=3
	obj_weather_controller.weather = 0;
	obj_weather_controller.particlesClear()
	image_index = 7
	layer_background_blend(layer_background_get_id("Background"),#100d23)
}