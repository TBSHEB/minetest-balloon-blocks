minetest.register_node("balloonblocks:glowing_red", {
  description = "Glowing red balloon",
  tiles = {"balloonblocks_red.png"},
	groups = balloonblocks.groups,
	light_source = 30,
	paramtype = "light",
	sunlight_propagates = true,
	on_secondary_use = balloonblocks.placeGlowRed,
	sounds = balloonblocks.sounds
})

minetest.register_craft({
	output = 'balloonblocks:glowing_red',
	recipe = {
		{'group:leaves', 'group:leaves', 'group:leaves'},
		{'group:leaves', 'default:torch', 'group:leaves'},
		{'dye:red', 'group:leaves', 'dye:red'},
	}
})

minetest.register_node("balloonblocks:glowing_yellow", {
	description = "Glowing yellow balloon",
	tiles = {"balloonblocks_yellow.png"},
	groups = balloonblocks.groups,
	light_source = 30,
	paramtype = "light",
	sunlight_propagates = true,
	on_secondary_use = balloonblocks.placeGlowYellow,
	sounds = balloonblocks.sounds
})

minetest.register_craft({
	output = 'balloonblocks:glowing_yellow',
	recipe = {
		{'group:leaves', 'group:leaves', 'group:leaves'},
		{'group:leaves', 'default:torch', 'group:leaves'},
		{'dye:yellow', 'group:leaves', 'dye:yellow'},
	}
})

minetest.register_node("balloonblocks:glowing_green", {
  description = "Glowing green balloon",
  tiles = {"balloonblocks_green.png"},
	groups = balloonblocks.groups,
	light_source = 30,
	paramtype = "light",
	sunlight_propagates = true,
	on_secondary_use = balloonblocks.placeGlowGreen,
	sounds = balloonblocks.sounds
})

minetest.register_craft({
	output = 'balloonblocks:glowing_green',
	recipe = {
		{'group:leaves', 'group:leaves', 'group:leaves'},
		{'group:leaves', 'default:torch', 'group:leaves'},
		{'dye:green', 'group:leaves', 'dye:green'},
	}
})

minetest.register_node("balloonblocks:glowing_blue", {
  description = "Glowing blue balloon",
  tiles = {"balloonblocks_blue.png"},
	groups = balloonblocks.groups,
	light_source = 30,
	paramtype = "light",
	sunlight_propagates = true,
	on_secondary_use = balloonblocks.placeGlowBlue,
	sounds = balloonblocks.sounds
})

minetest.register_craft({
	output = 'balloonblocks:glowing_blue',
	recipe = {
		{'group:leaves', 'group:leaves', 'group:leaves'},
		{'group:leaves', 'default:torch', 'group:leaves'},
		{'dye:blue', 'group:leaves', 'dye:blue'},
	}
})

minetest.register_node("balloonblocks:glowing_black", {
  description = "Glowing black balloon",
  tiles = {"balloonblocks_black.png"},
	groups = balloonblocks.groups,
	light_source = 30,
	paramtype = "light",
	sunlight_propagates = true,
	on_secondary_use = balloonblocks.placeGlowBlack,
	sounds = balloonblocks.sounds
})

minetest.register_craft({
	output = 'balloonblocks:glowing_black',
	recipe = {
		{'group:leaves', 'group:leaves', 'group:leaves'},
		{'group:leaves', 'default:torch', 'group:leaves'},
		{'dye:black', 'group:leaves', 'dye:black'},
	}
})

minetest.register_node("balloonblocks:glowing_white", {
  description = "Glowing white balloon",
  tiles = {"balloonblocks_white.png"},
	groups = balloonblocks.groups,
	light_source = 30,
	paramtype = "light",
	sunlight_propagates = true,
	on_secondary_use = balloonblocks.placeGlowWhite,
	sounds = balloonblocks.sounds
})

minetest.register_craft({
	output = 'balloonblocks:glowing_white',
	recipe = {
		{'group:leaves', 'group:leaves', 'group:leaves'},
		{'group:leaves', 'default:torch', 'group:leaves'},
		{'dye:white', 'group:leaves', 'dye:white'},
	}
})

minetest.register_node("balloonblocks:glowing_orange", {
  description = "Glowing orange balloon",
  tiles = {"balloonblocks_orange.png"},
	groups = balloonblocks.groups,
	light_source = 30,
	paramtype = "light",
	sunlight_propagates = true,
	on_secondary_use = balloonblocks.placeGlowOrange,
	sounds = balloonblocks.sounds
})

minetest.register_craft({
	output = 'balloonblocks:glowing_orange',
	recipe = {
		{'group:leaves', 'group:leaves', 'group:leaves'},
		{'group:leaves', 'default:torch', 'group:leaves'},
		{'dye:orange', 'group:leaves', 'dye:orange'},
	}
})

minetest.register_node("balloonblocks:glowing_purple", {
  description = "Glowing purple balloon",
  tiles = {"balloonblocks_purple.png"},
	groups = balloonblocks.groups,
	light_source = 30,
	paramtype = "light",
	sunlight_propagates = true,
	on_secondary_use = balloonblocks.placeGlowPurple,
	sounds = balloonblocks.sounds
})

minetest.register_craft({
	output = 'balloonblocks:glowing_purple',
	recipe = {
		{'group:leaves', 'group:leaves', 'group:leaves'},
		{'group:leaves', 'default:torch', 'group:leaves'},
		{'dye:violet', 'group:leaves', 'dye:violet'},
	}
})

minetest.register_node("balloonblocks:glowing_grey", {
  description = "Glowing grey balloon",
  tiles = {"balloonblocks_grey.png"},
	groups = balloonblocks.groups,
	light_source = 30,
	paramtype = "light",
	sunlight_propagates = true,
	on_secondary_use = balloonblocks.placeGlowGrey,
	sounds = balloonblocks.sounds
})

minetest.register_craft({
	output = 'balloonblocks:glowing_grey',
	recipe = {
		{'group:leaves', 'group:leaves', 'group:leaves'},
		{'group:leaves', 'default:torch', 'group:leaves'},
		{'dye:grey', 'group:leaves', 'dye:grey'},
	}
})


minetest.register_node("balloonblocks:glowing_pink", {
  description = "Glowing pink balloon",
  tiles = {"balloonblocks_pink.png"},
	groups = balloonblocks.groups,
	light_source = 30,
	paramtype = "light",
	sunlight_propagates = true,
	on_secondary_use = balloonblocks.placeGlowPink,
	sounds = balloonblocks.sounds
})

minetest.register_craft({
	output = 'balloonblocks:glowing_pink',
	recipe = {
		{'group:leaves', 'group:leaves', 'group:leaves'},
		{'group:leaves', 'default:torch', 'group:leaves'},
		{'dye:magenta', 'group:leaves', 'dye:magenta'},
	}
})


minetest.register_node("balloonblocks:glowing_brown", {
  description = "Glowing brown balloon",
  tiles = {"balloonblocks_brown.png"},
	groups = balloonblocks.groups,
	light_source = 30,
	paramtype = "light",
	sunlight_propagates = true,
	on_secondary_use = balloonblocks.placeGlowBrown,
	sounds = balloonblocks.sounds
})

minetest.register_craft({
	output = 'balloonblocks:glowing_brown',
	recipe = {
		{'group:leaves', 'group:leaves', 'group:leaves'},
		{'group:leaves', 'default:torch', 'group:leaves'},
		{'dye:brown', 'group:leaves', 'dye:brown'},
	}
})

-- Extra crafting --

minetest.register_craft({
	output = 'balloonblocks:glowing_red',
	type = 'shapeless',
	recipe = { 'balloonblocks:red', 'default:torch' }
})

minetest.register_craft({
	output = 'balloonblocks:glowing_yellow',
	type = 'shapeless',
	recipe = { 'balloonblocks:yellow', 'default:torch' }
})

minetest.register_craft({
	output = 'balloonblocks:glowing_green',
	type = 'shapeless',
	recipe = { 'balloonblocks:green', 'default:torch' }
})

minetest.register_craft({
	output = 'balloonblocks:glowing_blue',
	type = 'shapeless',
	recipe = { 'balloonblocks:blue', 'default:torch' }
})

minetest.register_craft({
	output = 'balloonblocks:glowing_black',
	type = 'shapeless',
	recipe = { 'balloonblocks:black', 'default:torch' }
})

minetest.register_craft({
	output = 'balloonblocks:glowing_white',
	type = 'shapeless',
	recipe = { 'balloonblocks:white', 'default:torch' }
})

minetest.register_craft({
	output = 'balloonblocks:glowing_orange',
	type = 'shapeless',
	recipe = { 'balloonblocks:orange', 'default:torch' }
})

minetest.register_craft({
	output = 'balloonblocks:glowing_purple',
	type = 'shapeless',
	recipe = { 'balloonblocks:purple', 'default:torch' }
})

minetest.register_craft({
	output = 'balloonblocks:glowing_pink',
	type = 'shapeless',
	recipe = { 'balloonblocks:pink', 'default:torch' }
})

minetest.register_craft({
	output = 'balloonblocks:glowing_grey',
	type = 'shapeless',
	recipe = { 'default:torch', 'balloonblocks:grey' }
})

minetest.register_craft({
	output = 'balloonblocks:glowing_brown',
	type = 'shapeless',
	recipe = { 'balloonblocks:brown', 'default:torch' }
})

minetest.register_craft({
	output = 'balloonblocks:glowing_green',
	type = 'shapeless',
	recipe = { 'balloonblocks:glowing_yellow', 'dye:blue' }
})

minetest.register_craft({
	output = 'balloonblocks:glowing_green',
	type = 'shapeless',
	recipe = { 'balloonblocks:glowing_blue', 'dye:yellow' }
})

minetest.register_craft({
	output = 'balloonblocks:glowing_orange',
	type = 'shapeless',
	recipe = { 'balloonblocks:glowing_red', 'dye:yellow' }
})

minetest.register_craft({
	output = 'balloonblocks:glowing_orange',
	type = 'shapeless',
	recipe = { 'balloonblocks:glowing_yellow', 'dye:red' }
})

minetest.register_craft({
	output = 'balloonblocks:glowing_purple',
	type = 'shapeless',
	recipe = { 'balloonblocks:glowing_blue', 'dye:red' }
})

minetest.register_craft({
	output = 'balloonblocks:glowing_purple',
	type = 'shapeless',
	recipe = { 'balloonblocks:glowing_red', 'dye:blue' }
})

minetest.register_craft({
	output = 'balloonblocks:glowing_pink',
	type = 'shapeless',
	recipe = { 'balloonblocks:glowing_white', 'dye:red' }
})

minetest.register_craft({
	output = 'balloonblocks:glowing_pink',
	type = 'shapeless',
	recipe = { 'balloonblocks:glowing_red', 'dye:white' }
})

minetest.register_craft({
	output = 'balloonblocks:glowing_grey',
	type = 'shapeless',
	recipe = { 'balloonblocks:glowing_white', 'dye:black' }
})

minetest.register_craft({
	output = 'balloonblocks:glowing_grey',
	type = 'shapeless',
	recipe = { 'dye:white', 'balloonblocks:glowing_black' }
})

minetest.register_craft({
	output = 'balloonblocks:glowing_brown',
	type = 'shapeless',
	recipe = { 'balloonblocks:glowing_red', 'dye:green' }
})

minetest.register_craft({
	output = 'balloonblocks:glowing_brown',
	type = 'shapeless',
	recipe = { 'balloonblocks:glowing_green', 'dye:red' }
})

minetest.register_craft({
	output = 'balloonblocks:glowing_green',
	type = 'shapeless',
	recipe = { 'balloonblocks:yellow', 'dye:blue', 'default:torch' }
})

minetest.register_craft({
	output = 'balloonblocks:glowing_green',
	type = 'shapeless',
	recipe = { 'balloonblocks:blue', 'dye:yellow', 'default:torch' }
})

minetest.register_craft({
	output = 'balloonblocks:glowing_orange',
	type = 'shapeless',
	recipe = { 'balloonblocks:red', 'dye:yellow', 'default:torch' }
})

minetest.register_craft({
	output = 'balloonblocks:glowing_orange',
	type = 'shapeless',
	recipe = { 'balloonblocks:yellow', 'dye:red', 'default:torch' }
})

minetest.register_craft({
	output = 'balloonblocks:glowing_purple',
	type = 'shapeless',
	recipe = { 'balloonblocks:blue', 'dye:red', 'default:torch' }
})

minetest.register_craft({
	output = 'balloonblocks:glowing_purple',
	type = 'shapeless',
	recipe = { 'balloonblocks:red', 'dye:blue', 'default:torch' }
})

minetest.register_craft({
	output = 'balloonblocks:glowing_pink',
	type = 'shapeless',
	recipe = { 'balloonblocks:white', 'dye:red', 'default:torch' }
})

minetest.register_craft({
	output = 'balloonblocks:glowing_pink',
	type = 'shapeless',
	recipe = { 'balloonblocks:red', 'dye:white', 'default:torch' }
})

minetest.register_craft({
	output = 'balloonblocks:glowing_grey',
	type = 'shapeless',
	recipe = { 'balloonblocks:white', 'dye:black', 'default:torch' }
})

minetest.register_craft({
	output = 'balloonblocks:glowing_grey',
	type = 'shapeless',
	recipe = { 'balloonblocks:black', 'dye:white', 'default:torch' }
})

minetest.register_craft({
	output = 'balloonblocks:glowing_brown',
	type = 'shapeless',
	recipe = { 'balloonblocks:red', 'dye:green', 'default:torch' }
})

minetest.register_craft({
	output = 'balloonblocks:glowing_brown',
	type = 'shapeless',
	recipe = { 'balloonblocks:green', 'dye:red', 'default:torch' }
})