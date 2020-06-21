minetest.register_node("balloonblocks:red", {
  description = "Red balloon",
  tiles = {"balloonblocks_red.png"},
	groups = balloonblocks.groups,
	paramtype = "light",
	sunlight_propagates = true,
	on_secondary_use = balloonblocks.placeRed,
	sounds = balloonblocks.sounds
})

minetest.register_craft(balloonblocks.craftRegular("red"))

minetest.register_node("balloonblocks:yellow", {
	description = "Yellow balloon",
	tiles = {"balloonblocks_yellow.png"},
	groups = balloonblocks.groups,
	paramtype = "light",
	sunlight_propagates = true,
	on_secondary_use = balloonblocks.placeYellow,
	sounds = balloonblocks.sounds
})

minetest.register_craft(balloonblocks.craftRegular("yellow"))

minetest.register_node("balloonblocks:green", {
  description = "Green balloon",
  tiles = {"balloonblocks_green.png"},
	groups = balloonblocks.groups,
	paramtype = "light",
	sunlight_propagates = true,
	on_secondary_use = balloonblocks.placeGreen,
	sounds = balloonblocks.sounds
})

minetest.register_craft(balloonblocks.craftRegular("green"))

minetest.register_node("balloonblocks:blue", {
  description = "Blue balloon",
  tiles = {"balloonblocks_blue.png"},
	groups = balloonblocks.groups,
	paramtype = "light",
	sunlight_propagates = true,
	on_secondary_use = balloonblocks.placeBlue,
	sounds = balloonblocks.sounds
})

minetest.register_craft(balloonblocks.craftRegular("blue"))

minetest.register_node("balloonblocks:black", {
  description = "Black balloon",
  tiles = {"balloonblocks_black.png"},
	groups = balloonblocks.groups,
	paramtype = "light",
	sunlight_propagates = true,
	on_secondary_use = balloonblocks.placeBlack,
	sounds = balloonblocks.sounds
})

minetest.register_craft(balloonblocks.craftRegular("black"))

minetest.register_node("balloonblocks:white", {
  description = "White balloon",
  tiles = {"balloonblocks_white.png"},
	groups = balloonblocks.groups,
	paramtype = "light",
	sunlight_propagates = true,
	on_secondary_use = balloonblocks.placeWhite,
	sounds = balloonblocks.sounds
})

minetest.register_craft(balloonblocks.craftRegular("white"))

minetest.register_node("balloonblocks:orange", {
  description = "Orange balloon",
  tiles = {"balloonblocks_orange.png"},
	groups = balloonblocks.groups,
	paramtype = "light",
	sunlight_propagates = true,
	on_secondary_use = balloonblocks.placeOrange,
	sounds = balloonblocks.sounds
})

minetest.register_craft(balloonblocks.craftRegular("orange"))

minetest.register_node("balloonblocks:purple", {
  description = "Purple balloon",
  tiles = {"balloonblocks_purple.png"},
	groups = balloonblocks.groups,
	paramtype = "light",
	sunlight_propagates = true,
	on_secondary_use = balloonblocks.placePurple,
	sounds = balloonblocks.sounds
})

minetest.register_craft({
	output = 'balloonblocks:purple',
	recipe = {
		{'group:leaves', 'group:leaves', 'group:leaves'},
		{'group:leaves', 'dye:violet', 'group:leaves'},
		{'dye:violet', 'group:leaves', 'dye:violet'},
	}
})

minetest.register_node("balloonblocks:grey", {
  description = "Grey balloon",
  tiles = {"balloonblocks_grey.png"},
	groups = balloonblocks.groups,
	paramtype = "light",
	sunlight_propagates = true,
	on_secondary_use = balloonblocks.placeGrey,
	sounds = balloonblocks.sounds
})

minetest.register_craft(balloonblocks.craftRegular("grey"))


minetest.register_node("balloonblocks:pink", {
  description = "Pink balloon",
  tiles = {"balloonblocks_pink.png"},
	groups = balloonblocks.groups,
	paramtype = "light",
	sunlight_propagates = true,
	on_secondary_use = balloonblocks.placePink,
	sounds = balloonblocks.sounds
})

minetest.register_craft({
	output = 'balloonblocks:pink',
	recipe = {
		{'group:leaves', 'group:leaves', 'group:leaves'},
		{'group:leaves', 'dye:magenta', 'group:leaves'},
		{'dye:magenta', 'group:leaves', 'dye:magenta'},
	}
})


minetest.register_node("balloonblocks:brown", {
  description = "Brown balloon",
  tiles = {"balloonblocks_brown.png"},
	groups = balloonblocks.groups,
	paramtype = "light",
	sunlight_propagates = true,
	on_secondary_use = balloonblocks.placeBrown,
	sounds = balloonblocks.sounds
})

minetest.register_craft(balloonblocks.craftRegular("brown"))

-- Extra crafting --

minetest.register_craft({
	output = 'balloonblocks:green',
	type = 'shapeless',
	recipe = { 'balloonblocks:yellow', 'dye:blue' }
})

minetest.register_craft({
	output = 'balloonblocks:green',
	type = 'shapeless',
	recipe = { 'dye:yellow', 'balloonblocks:blue' }
})

minetest.register_craft({
	output = 'balloonblocks:orange',
	type = 'shapeless',
	recipe = { 'balloonblocks:yellow', 'dye:red' }
})

minetest.register_craft({
	output = 'balloonblocks:orange',
	type = 'shapeless',
	recipe = { 'dye:yellow', 'balloonblocks:red' }
})

minetest.register_craft({
	output = 'balloonblocks:purple',
	type = 'shapeless',
	recipe = { 'balloonblocks:red', 'dye:blue' }
})

minetest.register_craft({
	output = 'balloonblocks:purple',
	type = 'shapeless',
	recipe = { 'dye:red', 'balloonblocks:blue' }
})

minetest.register_craft({
	output = 'balloonblocks:grey',
	type = 'shapeless',
	recipe = { 'balloonblocks:white', 'dye:black' }
})

minetest.register_craft({
	output = 'balloonblocks:grey',
	type = 'shapeless',
	recipe = { 'dye:white', 'balloonblocks:black' }
})

minetest.register_craft({
	output = 'balloonblocks:pink',
	type = 'shapeless',
	recipe = { 'balloonblocks:white', 'dye:red' }
})

minetest.register_craft({
	output = 'balloonblocks:pink',
	type = 'shapeless',
	recipe = { 'dye:white', 'balloonblocks:red' }
})

minetest.register_craft({
	output = 'balloonblocks:brown',
	type = 'shapeless',
	recipe = { 'balloonblocks:green', 'dye:red' }
})

minetest.register_craft({
	output = 'balloonblocks:brown',
	type = 'shapeless',
	recipe = { 'dye:green', 'balloonblocks:red' }
})
