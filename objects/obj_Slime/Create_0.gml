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
	obj_weather_controller.particlesClear()
	image_index = 0
	layer_background_blend(layer_background_get_id("Background"),c_black)
}

rainflower = function()
{
	obj_weather_controller.particlesClear()
	image_index = 4
	layer_background_blend(layer_background_get_id("Background"),c_black)
}

holopenyo = function()
{
	obj_weather_controller.particlesClear()
	image_index = 6
	layer_background_blend(layer_background_get_id("Background"),c_black)
}

rain = function()
{
	image_index = 3
	obj_weather_controller.particlesClear()
	obj_weather_controller.weatherStart(pt_Rain)
	layer_background_blend(layer_background_get_id("Background"),#000916)
}

fire = function()
{
	obj_weather_controller.particlesClear()
	image_index = 2
	layer_background_blend(layer_background_get_id("Background"),#180000)
}

oduvanchiki = function()
{
	obj_weather_controller.particlesClear()
	image_index = 1
	layer_background_blend(layer_background_get_id("Background"),#051313)
}

lavandoviyraf = function()
{
	obj_weather_controller.particlesClear()
	image_index = 7
	layer_background_blend(layer_background_get_id("Background"),#100d23)
}