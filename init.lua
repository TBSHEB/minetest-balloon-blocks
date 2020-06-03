local placeColour = function (colour)
  return function(itemstack, user, pointed_thing)
		local pos = user:getpos()
		local dir = user:get_look_dir()
		local i = 3
		local new_pos = {
			x = pos.x + (dir.x * i),
			y = pos.y + 1 + (dir.y * i),
			z = pos.z + (dir.z * i),
		}
		local name = 'balloonblocks:'..colour
		minetest.set_node(new_pos, {name=name})
	end
end

local soundsConfig = function ()
	return {
	  footstep = {name = "balloonblocks_footstep", gain = 0.2},
	  dig = {name = "balloonblocks_footstep", gain = 0.3},
	  dug = {name = "balloonblocks_footstep", gain = 0.3},
	  place = {name = "default_place_node_hard", gain = 1.0}
	}
end

local balloonState = {
	placeRed = placeColour('red'),
	placeYellow = placeColour('yellow'),
	placeGreen = placeColour('green'),
	placeBlue = placeColour('blue'),
	sounds = soundsConfig()
}

minetest.register_node("balloonblocks:red", {
  description = "Red balloon",
  tiles = {"balloonblocks_red.png"},
	groups = {snappy=3},
	paramtype = "light",
	sunlight_propagates = true,
	on_secondary_use = balloonState.placeRed,
	sounds = balloonState.sounds
})

minetest.register_craft({
	output = 'balloonblocks:red',
	recipe = {
		{'group:leaves', 'group:leaves', 'group:leaves'},
		{'group:leaves', 'dye:red', 'group:leaves'},
		{'dye:red', 'group:leaves', 'dye:red'},
	}
})

minetest.register_node("balloonblocks:yellow", {
	description = "Yellow balloon",
	tiles = {"balloonblocks_yellow.png"},
	groups = {snappy=3}
	paramtype = "light",
	sunlight_propagates = true,
	on_secondary_use = balloonState.placeYellow,
	sounds = balloonState.sounds
})

minetest.register_craft({
	output = 'balloonblocks:yellow',
	recipe = {
		{'group:leaves', 'group:leaves', 'group:leaves'},
		{'group:leaves', 'dye:yellow', 'group:leaves'},
		{'dye:yellow', 'group:leaves', 'dye:yellow'},
	}
})

minetest.register_node("balloonblocks:green", {
  description = "Green balloon",
  tiles = {"balloonblocks_green.png"},
	groups = {snappy=3}
	paramtype = "light",
	sunlight_propagates = true,
	on_secondary_use = balloonState.placeGreen,
	sounds = balloonState.sounds
})

minetest.register_craft({
	output = 'balloonblocks:green',
	recipe = {
		{'group:leaves', 'group:leaves', 'group:leaves'},
		{'group:leaves', 'dye:green', 'group:leaves'},
		{'dye:green', 'group:leaves', 'dye:green'},
	}
})

minetest.register_node("balloonblocks:blue", {
  description = "Blue balloon",
  tiles = {"balloonblocks_blue.png"},
	groups = {snappy=3}
	paramtype = "light",
	sunlight_propagates = true,
	on_secondary_use = balloonState.placeBlue,
	sounds = balloonState.sounds
})

minetest.register_craft({
	output = 'balloonblocks:blue',
	recipe = {
		{'group:leaves', 'group:leaves', 'group:leaves'},
		{'group:leaves', 'dye:blue', 'group:leaves'},
		{'dye:blue', 'group:leaves', 'dye:blue'},
	}
})
