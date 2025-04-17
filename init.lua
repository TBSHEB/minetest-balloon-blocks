balloonblocks = {}
local version = "v1.4.0"
local mname = "balloonblocks"

local modpath = minetest.get_modpath("balloonblocks")

dofile(modpath.."/src/common.lua")
dofile(modpath.."/src/regular.lua")
dofile(modpath.."/src/glowing.lua")

if minetest.global_exists("stairsplus") then
	dofile(modpath.."/src/stairs.lua")
end

minetest.log("action", "[Mod] "..mname.." ["..version.."] loaded.")
