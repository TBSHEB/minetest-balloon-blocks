
-- Options
local intGlowLum = tonumber(minetest.settings:get('balloonblocks:balloon_brightness')) or minetest.LIGHT_MAX
local strBaseCraftItem = tonumber(minetest.settings:get('balloonblocks.base_craft_item')) or 'group:leaves'
local strGlowCraftItem = minetest.settings:get('balloonblocks:glow_craft_item') or 'default:torch'
local boolBackwardCompat = minetest.settings:get_bool('balloonblocks:backward_compat') or false -- Turn this on if upgrading from previous version

-- Put locale support here



local ColorTable = { ['red'] = 'ab1212c0',
                     ['yellow'] = 'ffdf11c0',
                     ['green'] = '2aff2ac0',
                     ['blue'] = '2a7fffc0',
                     ['black'] = '000000c0',
                     ['white'] = 'FFFFFFc0',
                     ['orange'] = 'ff6600c0',
                     ['violet'] = 'cc00ffc0',
                     ['grey'] = '808080c0',
                     ['magenta'] = 'ff00ccc0',
                     ['brown'] = '4e2600c0' }

local function firstToUpper(str)
    return (str:gsub('^%l', string.upper))
end

local tblSounds = {
   	  footstep = {name = 'balloonblocks_footstep', gain = 0.2},
	  dig = {name = 'balloonblocks_footstep', gain = 0.3},
	  dug = {name = 'default_dug_hard.1', gain = 0.3},
	  place = {name = 'default_place_node_hard', gain = 1.0}
}

local tblGroups = {snappy=3, fall_damage_add_percent = -99, bouncy=70}

local tblReplaceableNodes = {['air'] = true,
							['default:water_source'] = true,
							['default:water_flowing'] = true,
							['default:river_water_source'] = true,
							['default:river_water_flowing'] = true,
							['default:lava_source'] = true,
							['default:lava_flowing'] = true
}

-- Returns a on_secondary_use function that places the balloon block in the air -- 
local placeBalloon = function (strNodeName)
	return function(itemstack, user, pointed_thing)
		-- Place node three blocks from the user in the air --
		local pos = user:getpos()
		local dir = user:get_look_dir()
		local balloonPlaceDistanceFromPlayer = 3
		local new_pos = {
			x = pos.x + (dir.x * balloonPlaceDistanceFromPlayer),
			y = pos.y + 1.5 + (dir.y * balloonPlaceDistanceFromPlayer),
			z = pos.z + (dir.z * balloonPlaceDistanceFromPlayer),
		}
		local getPos = minetest.get_node(new_pos)
		if tblReplaceableNodes[getPos.name] ~= nil then
			local strUser = user.get_player_name(user)
			if minetest.is_protected(new_pos, strUser) then
				minetest.chat_send_player(strUser, 'Unable to place balloon. This area is protected!')	-- localize this
			else
				minetest.set_node(new_pos, {name=strNodeName})
				if (not minetest.is_creative_enabled(user.get_player_name(user))) then
					local stack = ItemStack(strNodeName)
					return ItemStack(strNodeName .. ' ' .. itemstack:get_count() - 1)
				end
			end
		end
	end
end

local function register_node_craft(strColour, intLum, strPrepend, strGlowCraftItem) 
    local strName = firstToUpper(strPrepend)..' '..firstToUpper(strColour)..' Balloon'
    if strPrepend ~= '' then strPrepend = strPrepend..'_' end
    local strNodeName = 'balloonblocks:'..strPrepend..strColour
	minetest.chat_send_all('balloonblocks_grey.png^[colorize:#'..ColorTable[strColour])
	minetest.register_node(strNodeName, {
		description = strName,		-- localize this
		tiles = {'balloonblocks.png^[colorize:#'..ColorTable[strColour]},
		groups = tblGroups,
		light_source = intLum,
		paramtype = 'light',
		sunlight_propagates = true,
		on_secondary_use = placeBalloon(strNodeName),
		sounds = tblSounds
	})

    minetest.register_craft({
        output = strNodeName,
        recipe = {
            {strBaseCraftItem, strBaseCraftItem, strBaseCraftItem},
            {strBaseCraftItem, 'dye:'..strColour ,strBaseCraftItem},
            {strGlowCraftItem, strBaseCraftItem, strGlowCraftItem}
        }
    })
    
    if strPrepend ~= '' then
        minetest.register_craft({
            output = strNodeName,
            type = 'shapeless',
            recipe = {'balloonblocks:'..strColour, strGlowCraftItem}
        })
    end
end

for curColour, _ in pairs(ColorTable) do
    register_node_craft(curColour, 0, '', '')
    register_node_craft(curColour, intGlowLum, 'glowing', strGlowCraftItem)
end



tblColourMixers = {
    -- output, first input, second input
    {'green', 'yellow', 'blue'},
    {'orange', 'red', 'yellow'},
    {'violet', 'red', 'blue'},
    {'magenta', 'red', 'white'},
    {'grey', 'white', 'black'},
    {'brown', 'red', 'green'},
    {'brown', 'blue', 'orange'},
    {'brown', 'yellow', 'violet'}
}

for _, curTable in pairs(tblColourMixers) do
--    for _, curPrepend in ipairs({'', 'glowing_', 'bright_'}) do
    for _, curPrepend in ipairs({'', 'glowing_'}) do
        minetest.register_craft({
            output = 'balloonblocks:'..curPrepend..curTable[1],
            type = 'shapeless',
            recipe = { 'balloonblocks:'..curPrepend..curTable[2], 'dye:'..curTable[3] }
        })
        minetest.register_craft({
            output = 'balloonblocks:'..curPrepend..curTable[1],
            type = 'shapeless',
            recipe = { 'balloonblocks:'..curPrepend..curTable[3], 'dye:'..curTable[2] }
        })
    end
end

-- Backward Compatibility
if boolBackwardCompat then
    local tblOldNames = {['magenta'] = 'pink', ['violet'] = 'purple', ['glowing_magenta'] = 'glowing_pink', ['glowing_violet'] = 'glowing_purple'}
    
    -- Don't add compatibility blocks to creative inventory
    local tblCompatGroups = {}
    for k,v in pairs(tblGroups) do
        tblCompatGroups[k] = v
    end
    tblCompatGroups['not_in_creative_inventory'] = 1

    for strNew, strOld in pairs(tblOldNames) do
        minetest.register_abm({
            nodenames = {'balloonblocks:'..strOld},
            interval = 1,
            chance = 1,
            action = function(pos, node)
                minetest.env:swap_node(pos, {name = 'balloonblocks:'..strNew})
            end,
        })
        minetest.register_node('balloonblocks:'..strOld, {
        description = firstToUpper(strNew)..' balloon',		-- localize this
        tiles = {'balloonblocks.png^[colorize:#'..ColorTable[string.gsub(strNew, 'glowing_', '')]},
            groups = tblCompatGroups,
            paramtype = 'light',
            sunlight_propagates = true,
            on_secondary_use = placeBalloon('balloonblocks:'..strNew)
        })

    end
end

