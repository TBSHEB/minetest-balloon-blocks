--if minetest.global_exists("stairsplus") then
--образец ноды, которую надо обработать
--[[
minetest.register_node("balloonblocks:glowing_red", {
  description = "Glowing red balloon",
  tiles = {"balloonblocks_red.png"},
	groups = balloonblocks.groups,
	light_source = default.LIGHT_MAX,
	paramtype = "light",
	sunlight_propagates = true,
	on_secondary_use = balloonblocks.placeGlowRed,
	sounds = balloonblocks.sounds
})
--образец кода добавления в пилу ноды
stairsplus:register_all("df_underworld_items", "glow_amethyst", "df_underworld_items:glow_amethyst", {
	description = S("Glowing Amethyst Block"),
	tiles = {"dfcaverns_glow_amethyst.png"},
	groups = {crumbly = 1, cracky = 3},
	sounds = df_dependencies.sound_glass(),
	is_ground_content = false,
	light_source = 6,
	paramtype = "light",
	use_texture_alpha = "blend",
	drawtype = "glasslike",
	sunlight_propagates = true,
})

--]]
--код итерирующий все зарегистрированные ноды мода, и цепляющий ни нах регистрацию в стайрс

local names = {}
local node_def = {}
local nodes = {}
local modname
local full_nodename
local node

for full_nodename, node_def in pairs(minetest.registered_nodes) do
    names = full_nodename:split(":")
    if names[1] == "balloonblocks" then
        node = {
            full_nodename = full_nodename,
            node_def = node_def
        }
        table.insert(nodes, node)
    end
end
if nodes then
    for _, node in pairs(nodes) do
        names = node.full_nodename:split(":")
            stairsplus:register_all(names[1], names[2], node.full_nodename, node.node_def)
        minetest.log("action", "Node " .. node.full_nodename .. " added to stairsplus")
    end
end



