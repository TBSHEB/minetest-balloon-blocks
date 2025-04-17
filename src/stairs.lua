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



