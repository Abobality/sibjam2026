global.tickrate = 4;
global.costMultipler = 1;
global.flameCostMultipler = 1;
global.waterCostMultipler = 1;
global.oduvanchikCostMultipler = 1;
global.slotCost = 100;

global.romashki = 0;
global.holopeny = 0;
global.rainflowers = 0;
global.flameflowers = 2;
global.stormflowers = 2;
global.oduvanchiki = 2;
global.lavandoviyraf = 0;

global.feedArray = [
	global.romashki ,
	global.holopeny ,
	global.rainflowers ,
	global.flameflowers ,
	global.stormflowers ,
	global.oduvanchiki ,
	global.lavandoviyraf 

]

enum FLOWERS
{
	ROMASHKA,
	HOLOPENYO,
	RAINFLOWER,
	FLAMEFLOWER,
	STORMFLOWER,
	ODUVANCHIK,
	LAVANDARAF
}

romashka = {
	type: "basic",
	cost: 100 * global.costMultipler * global.oduvanchikCostMultipler,
	grow_speed:1,
	feed: 0,
	sprite: spr_romashka
}

holopenyo = {
	type: "basic",
	cost: 100,
	grow_speed:1,
	feed: 1,
	sprite: spr_holopenyo
}

rainflower = {
	type: "basic",
	cost: 100,
	grow_speed:1,
	feed: 2,
	sprite: spr_rainflower
}

flameflower = {
	type: "hybrid",
	cost: 100,
	grow_speed:1,
	feed: 3,
	sprite: spr_flame_flower
}

stormflower = {
	type: "hybrid",
	cost: 100,
	grow_speed:1,
	feed: 4,
	sprite: spr_storm_flower
}

oduvanchik = {
	type: "hybrid",
	cost: 100,
	grow_speed:1,
	feed: 5,
	sprite: spr_oduvanchik
}

lavandaRaf = {
	type: "legend",
	cost: 100,
	grow_speed:1,
	feed: 6,
	sprite: spr_lavandaCoffee
}

global.planrsPool = [
	romashka,holopenyo,rainflower,lavandaRaf,flameflower,stormflower,oduvanchik
]