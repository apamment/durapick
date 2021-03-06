
-- Settings

-- Durabilites
durapick_durability_wood = 270 -- default:pick_wood 30
durapick_durability_stone = 540 -- default:pick_stone 60
durapick_durability_steel = 1620 -- default:pick_steel 180
durapick_durability_bronze = 1620 -- default:pick_bronze 180
durapick_durability_mese = 4860 -- default:pick_mese 540
durapick_durability_diamond = 5490 -- default:pick_diamond 610

-- Resources
durapick_stick = "default:stick"
durapick_resource_steel = "default:steelblock"
durapick_resource_bronze = "default:bronzeblock"
durapick_resource_diamond = "default:diamondblock"
durapick_resource_mese = "default:mese"
durapick_resource_stone = "moreblocks:cobble_compressed"
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
