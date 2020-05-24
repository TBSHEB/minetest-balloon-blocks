minetest.register_node("balloons:rubber_red", {
  description = "Red balloon",
  tiles = {"balloons_rubber_red.png"},
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
	paramtype = "light",
	sunlight_propagates = true,
	on_secondary_use = function(itemstack, user, pointed_thing)
		local pos = user:getpos()
		local dir = user:get_look_dir()
		local i = 3
		local new_pos = {
			x = pos.x + (dir.x * i),
			y = pos.y + 1 + (dir.y * i),
			z = pos.z + (dir.z * i),
	  }
	  minetest.set_node(new_pos, {name='balloons:rubber_red'})
	end
})

minetest.register_craft({
	output = 'balloons:rubber_red',
	recipe = {
		{'default:wood', 'default:wood', ''},
		{'default:wood', 'default:wood', ''},
		{'', '', ''},
	}
})

minetest.register_node("balloons:rubber_yellow", {
	description = "Yellow balloon",
	tiles = {"balloons_rubber_yellow.png"},
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
	paramtype = "light",
	sunlight_propagates = true,
	on_secondary_use = function(itemstack, user, pointed_thing)
		local pos = user:getpos()
		local dir = user:get_look_dir()
		local i = 3
		local new_pos = {
			x = pos.x + (dir.x * i),
			y = pos.y + 1 + (dir.y * i),
			z = pos.z + (dir.z * i),
	  }
	  minetest.set_node(new_pos, {name='balloons:rubber_yellow'})
	end
})

minetest.register_craft({
	output = 'balloons:rubber_yellow',
	recipe = {
		{'default:wood', 'default:wood', ''},
		{'default:wood', 'default:wood', ''},
		{'', '', ''},
	}
})

minetest.register_node("balloons:rubber_green", {
  description = "Green balloon",
  tiles = {"balloons_rubber_green.png"},
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
	paramtype = "light",
	sunlight_propagates = true,
	on_secondary_use = function(itemstack, user, pointed_thing)
		local pos = user:getpos()
		local dir = user:get_look_dir()
		local i = 3
		local new_pos = {
			x = pos.x + (dir.x * i),
			y = pos.y + 1 + (dir.y * i),
			z = pos.z + (dir.z * i),
	  }
	  minetest.set_node(new_pos, {name='balloons:rubber_green'})
	end
})

minetest.register_craft({
	output = 'balloons:rubber_green',
	recipe = {
		{'default:wood', 'default:wood', ''},
		{'default:wood', 'default:wood', ''},
		{'', '', ''},
	}
})

minetest.register_node("balloons:rubber_blue", {
  description = "Blue balloon",
  tiles = {"balloons_rubber_blue.png"},
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
	paramtype = "light",
	sunlight_propagates = true,
	on_secondary_use = function(itemstack, user, pointed_thing)
		local pos = user:getpos()
		local dir = user:get_look_dir()
		local i = 3
		local new_pos = {
			x = pos.x + (dir.x * i),
			y = pos.y + 1 + (dir.y * i),
			z = pos.z + (dir.z * i),
	  }
	  minetest.set_node(new_pos, {name='balloons:rubber_blue'})
	end
})

minetest.register_craft({
	output = 'balloons:rubber_blue',
	recipe = {
		{'default:wood', 'default:wood', ''},
		{'default:wood', 'default:wood', ''},
		{'', '', ''},
	}
})
