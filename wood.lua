-- Make such a thing
minetest.register_tool("durapick:wood_pick", {
    description = "Durable Wooden Pickaxe",
    inventory_image = "durapick_wood.png",
    tool_capabilities = {
		full_punch_interval = 1.3,
		max_drop_level=1,
		groupcaps={
            -- Changed it so the wood pick has the ability to mine like a steel pick, just slower
			cracky = {times={[3]=1.60}, uses=durapick_durability_wood, maxlevel=1},
		},
		damage_groups = {fleshy=2},
    },
    sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1, flammable = 2}
})

minetest.register_craft({
    type = "shaped",
    output = "durapick:wood_pick 1",
    recipe = { -- Use globals to allow customized recipes
        {durapick_resource_wood_post, durapick_resource_wood_post, durapick_resource_wood_post},
        {"", durapick_stick, ""},
        {"", durapick_stick, ""}
    },
})

minetest.register_craftitem("durapick:dura_wood", {
    description = "Dura Wood",
    inventory_image = "durapick_resource_wood.png"
})

ItemStack("durapick:dura_wood", 99)

minetest.register_craft({
    type = "shaped",
    output = "durapick:dura_wood 1",
    recipe = { -- Use globals to allow customized recipes
        {durapick_resource_wood_pre, durapick_resource_wood_pre, durapick_resource_wood_pre},
        {durapick_resource_wood_pre, durapick_resource_wood_pre, durapick_resource_wood_pre},
        {durapick_resource_wood_pre, durapick_resource_wood_pre, durapick_resource_wood_pre}
    },
})
