
-- Settings

-- Durabilites
durapick_durability_wood = 50
durapick_durability_stone = 100
durapick_durability_steel = 140
durapick_durability_bronze = 120
durapick_durability_mese = 170
durapick_durability_diamond = 240

-- Resources
durapick_stick = "default:stick"
durapick_resource_steel = "default:steelblock"
durapick_resource_bronze = "default:bronzeblock"
durapick_resource_diamond = "default:diamondblock"
durapick_resource_mese = "default:mese"
durapick_resource_stone = "default:stonebrick"
durapick_resource_wood_post = "durapick:dura_wood"
durapick_resource_wood_pre = "group:wood"

-- End of Settings

-- Merge all files, from worst to best, top to bottom
dofile(minetest.get_modpath("durapick") .. "/wood.lua")
dofile(minetest.get_modpath("durapick") .. "/stone.lua")
dofile(minetest.get_modpath("durapick") .. "/bronze.lua")
dofile(minetest.get_modpath("durapick") .. "/steel.lua")
dofile(minetest.get_modpath("durapick") .. "/mese.lua")
dofile(minetest.get_modpath("durapick") .. "/diamond.lua")
dofile(minetest.get_modpath("durapick") .. "/dev.lua")