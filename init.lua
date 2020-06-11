-- Detect creative mod
local creative_mod = minetest.get_modpath("creative")
-- Cache creative mode setting as fallback if creative mod not present
local creative_mode_cache = minetest.settings:get_bool("creative_mode")

-- Returns a on_secondary_use function that places the balloon block in the air 
local placeColour = function (colour)
	return function(itemstack, user, pointed_thing)
		-- Place node three blocks from the user in the air
		local pos = user:getpos()
		local dir = user:get_look_dir()
		local balloonPlaceDistanceFromPlayer = 3
		local new_pos = {
			x = pos.x + (dir.x * balloonPlaceDistanceFromPlayer),
			y = pos.y + 1 + (dir.y * balloonPlaceDistanceFromPlayer),
			z = pos.z + (dir.z * balloonPlaceDistanceFromPlayer),
		}
		local name = 'balloonblocks:'..colour
		minetest.set_node(new_pos, {name=name})
		
		local creative_enabled = (creative_mod and creative.is_enabled_for(user.get_player_name(user))) or creative_mode_cache
		if (not creative_enabled) then
			local stack = ItemStack(name)
			return ItemStack(name .. " " .. itemstack:get_count() - 1)
		end
	end
end

local soundsConfig = function ()
	return {
	  footstep = {name = "balloonblocks_footstep", gain = 0.2},
	  dig = {name = "balloonblocks_footstep", gain = 0.3},
	  dug = {name = "default_dug_hard.1", gain = 0.3},
	  place = {name = "default_place_node_hard", gain = 1.0}
	}
end

-- Holds balloonblock functions and config
local balloonState = {
	placeRed = placeColour('red'),
	placeYellow = placeColour('yellow'),
	placeGreen = placeColour('green'),
	placeBlue = placeColour('blue'),
	placeBlack = placeColour('black'),
	placeWhite = placeColour('white'),
	placeOrange = placeColour('orange'),
	placePurple = placeColour('purple'),
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
	groups = {snappy=3},
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
	groups = {snappy=3},
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
	groups = {snappy=3},
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

minetest.register_node("balloonblocks:black", {
  description = "Black balloon",
  tiles = {"balloonblocks_black.png"},
	groups = {snappy=3},
	paramtype = "light",
	sunlight_propagates = true,
	on_secondary_use = balloonState.placeBlack,
	sounds = balloonState.sounds
})

minetest.register_craft({
	output = 'balloonblocks:black',
	recipe = {
		{'group:leaves', 'group:leaves', 'group:leaves'},
		{'group:leaves', 'dye:black', 'group:leaves'},
		{'dye:black', 'group:leaves', 'dye:black'},
	}
})

minetest.register_node("balloonblocks:white", {
  description = "White balloon",
  tiles = {"balloonblocks_white.png"},
	groups = {snappy=3},
	paramtype = "light",
	sunlight_propagates = true,
	on_secondary_use = balloonState.placeWhite,
	sounds = balloonState.sounds
})

minetest.register_craft({
	output = 'balloonblocks:white',
	recipe = {
		{'group:leaves', 'group:leaves', 'group:leaves'},
		{'group:leaves', 'dye:white', 'group:leaves'},
		{'dye:white', 'group:leaves', 'dye:white'},
	}
})

minetest.register_node("balloonblocks:orange", {
  description = "Orange balloon",
  tiles = {"balloonblocks_orange.png"},
	groups = {snappy=3},
	paramtype = "light",
	sunlight_propagates = true,
	on_secondary_use = balloonState.placeOrange,
	sounds = balloonState.sounds
})

minetest.register_craft({
	output = 'balloonblocks:orange',
	recipe = {
		{'group:leaves', 'group:leaves', 'group:leaves'},
		{'group:leaves', 'dye:orange', 'group:leaves'},
		{'dye:orange', 'group:leaves', 'dye:orange'},
	}
})

minetest.register_node("balloonblocks:purple", {
  description = "Purple balloon",
  tiles = {"balloonblocks_purple.png"},
	groups = {snappy=3},
	paramtype = "light",
	sunlight_propagates = true,
	on_secondary_use = balloonState.placePurple,
	sounds = balloonState.sounds
})

minetest.register_craft({
	output = 'balloonblocks:purple',
	recipe = {
		{'group:leaves', 'group:leaves', 'group:leaves'},
		{'group:leaves', 'dye:violet', 'group:leaves'},
		{'dye:violet', 'group:leaves', 'dye:violet'},
	}
})