balloonblocks = {}
local version = "v1.3.1"
local mname = "balloonblocks"

local modpath = minetest.get_modpath("balloonblocks")

dofile(modpath.."/src/common.lua")
dofile(modpath.."/src/regular.lua")
dofile(modpath.."/src/glowing.lua")
dofile(modpath.."/src/stairs.lua")
minetest.log("action", "[Mod] "..mname.." ["..version.."] loaded.")
