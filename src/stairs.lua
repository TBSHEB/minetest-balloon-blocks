local balloon_nodes = {
		"balloonblocks:glowing_red",
		"balloonblocks:glowing_yellow",
		"balloonblocks:glowing_green",
		"balloonblocks:glowing_blue",
		"balloonblocks:glowing_black",
		"balloonblocks:glowing_white",
		"balloonblocks:glowing_orange",
		"balloonblocks:glowing_purple",
		"balloonblocks:glowing_grey",
		"balloonblocks:glowing_pink",
		"balloonblocks:glowing_brown",
		"balloonblocks:red",
		"balloonblocks:yellow",
		"balloonblocks:green",
		"balloonblocks:blue",
		"balloonblocks:black",
		"balloonblocks:white",
		"balloonblocks:orange",
		"balloonblocks:purple",
		"balloonblocks:grey",
		"balloonblocks:pink",
		"balloonblocks:brown",
	}

for _, nodename in pairs(balloon_nodes) do
    local ndef = table.copy(minetest.registered_nodes[nodename])
	ndef.on_secondary_use = nil
	local names = nodename:split(":")
	stairsplus:register_all(names[1], names[2], nodename, ndef)
end




