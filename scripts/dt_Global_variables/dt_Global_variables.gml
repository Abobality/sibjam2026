global.tickrate = 8;
global.costMultipler = 1;
global.flameCostMultipler = 1;
global.waterCostMultipler = 1;
global.oduvanchikCostMultipler = 1;
global.slotCost = 100;
global.cash = 3000000000000;
global.slimeText = ""

global.romashki = 0;
global.holopeny = 0;
global.rainflowers = 0;
global.flameflowers = 0;
global.stormflowers = 0;
global.oduvanchiki = 0;
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
	cost: 100,
	grow_speed:10,
	feed: 0,
	sprite: spr_romashka,
	family: "basic",
	mult:0
}

holopenyo = {
	type: "basic",
	cost: 200 * global.costMultipler * global.flameCostMultipler,
	grow_speed:20,
	feed: 1,
	sprite: spr_holopenyo,
	family: "fire",
	mult: global.flameCostMultipler
}

rainflower = {
	type: "basic",
	cost: 100 * global.costMultipler * global.waterCostMultipler ,
	grow_speed:30,
	feed: 2,
	sprite: spr_rainflower,
	family: "water",
	mult: global.waterCostMultipler
}

flameflower = {
	type: "hybrid",
	cost: 100 * global.costMultipler * global.flameCostMultipler,
	grow_speed:1,
	feed: 3,
	sprite: spr_flame_flower,
	family: "fire",
	mult: global.flameCostMultipler
}

stormflower = {
	type: "hybrid",
	cost: 100 * global.costMultipler * global.waterCostMultipler ,
	grow_speed:1,
	feed: 4,
	sprite: spr_storm_flower,
	family: "water",
	mult: global.waterCostMultipler
}

oduvanchik = {
	type: "hybrid",
	cost: 100 * global.costMultipler * global.oduvanchikCostMultipler,
	grow_speed:1,
	feed: 5,
	sprite: spr_oduvanchik,
	family: "basic",
	mult: global.oduvanchikCostMultipler
}

lavandaRaf = {
	type: "legend",
	cost: 1000 ,
	grow_speed:10,
	feed: 6,
	sprite: spr_lavandaCoffee,
	family: "basic",
	mult: 0
}

global.planrsPool = [
	romashka,holopenyo,rainflower,lavandaRaf,flameflower,stormflower,oduvanchik
]