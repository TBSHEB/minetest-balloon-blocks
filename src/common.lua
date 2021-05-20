-- Detect creative mod --
local creative_mod = minetest.get_modpath("creative")
-- Cache creative mode setting as fallback if creative mod not present --
local creative_mode_cache = minetest.settings:get_bool("creative_mode")

-- Returns a on_secondary_use function that places the balloon block in the air -- 
local placeColour = function(colour)
	return function(itemstack, user, pointed_thing)
		-- Place node three blocks from the user in the air --
		local pos = user:get_pos()
		local dir = user:get_look_dir()
		local balloonPlaceDistanceFromPlayer = 3
		local new_pos = {
			x = pos.x + (dir.x * balloonPlaceDistanceFromPlayer),
			y = pos.y + 1 + (dir.y * balloonPlaceDistanceFromPlayer),
			z = pos.z + (dir.z * balloonPlaceDistanceFromPlayer),
		}
		local getPos = minetest.get_node(new_pos)
		local PosNodeDef = minetest.registered_nodes[getPos.name]
		if PosNodeDef and PosNodeDef.buildable_to then
			local name = "balloonblocks:"..colour
			minetest.set_node(new_pos, {name=name})
			local creative_enabled = (creative_mod and creative.is_enabled_for(user.get_player_name(user))) or creative_mode_cache
			if (not creative_enabled) then
				itemstack:take_item(1)
				return itemstack
			end
		end
	end
end

balloonblocks.craftRegular = function (colour)
	return {
		output = 'balloonblocks:'..colour,
		recipe = {
			{'group:leaves', 'group:leaves', 'group:leaves'},
			{'group:leaves', 'dye:'..colour, 'group:leaves'},
			{'dye:'..colour, 'group:leaves', 'dye:'..colour},
		}
	}
end

balloonblocks.craftGlowing = function (colour)
	return {
		output = 'balloonblocks:glowing_'..colour,
		recipe = {
			{'group:leaves', 'group:leaves', 'group:leaves'},
			{'group:leaves', 'default:torch', 'group:leaves'},
			{'dye:'..colour, 'group:leaves', 'dye:'..colour},
		}
	}
end
	
local soundsConfig = function ()
	return {
	  footstep = {name = "balloonblocks_footstep", gain = 0.2},
	  dig = {name = "balloonblocks_footstep", gain = 0.3},
	  dug = {name = "default_dug_hard.1", gain = 0.3},
	  place = {name = "default_place_node_hard", gain = 1.0}
	}
end

-- Holds balloonblock functions and config --
balloonblocks.placeRed = placeColour('red')
balloonblocks.placeYellow = placeColour('yellow')
balloonblocks.placeGreen = placeColour('green')
balloonblocks.placeBlue = placeColour('blue')
balloonblocks.placeBlack = placeColour('black')
balloonblocks.placeWhite = placeColour('white')
balloonblocks.placeOrange = placeColour('orange')
balloonblocks.placePurple = placeColour('purple')
balloonblocks.placeGrey = placeColour('grey')
balloonblocks.placePink = placeColour('pink')
balloonblocks.placeBrown = placeColour('brown')
balloonblocks.placeGlowRed = placeColour('glowing_red')
balloonblocks.placeGlowYellow = placeColour('glowing_yellow')
balloonblocks.placeGlowGreen = placeColour('glowing_green')
balloonblocks.placeGlowBlue = placeColour('glowing_blue')
balloonblocks.placeGlowBlack = placeColour('glowing_black')
balloonblocks.placeGlowWhite = placeColour('glowing_white')
balloonblocks.placeGlowOrange = placeColour('glowing_orange')
balloonblocks.placeGlowPurple = placeColour('glowing_purple')
balloonblocks.placeGlowGrey = placeColour('glowing_grey')
balloonblocks.placeGlowPink = placeColour('glowing_pink')
balloonblocks.placeGlowBrown = placeColour('glowing_brown')
balloonblocks.sounds = soundsConfig()
balloonblocks.groups = {snappy=3, fall_damage_add_percent = -99, bouncy=70}
