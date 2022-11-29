---------------------------------------------------------------------------------------------------
-- tweaked chests (twchests) mod for minetest by A S Lewis
--      https://github.com/axcore/twchests
--      Licence (code): LGPL 2.1
--      Licence (media): CC BY-SA 3.0
---------------------------------------------------------------------------------------------------

local S = twchests.intllib

local grid_x = 12
local grid_y = 5

local c_def_chest = "default:chest"
local c_diamond = "default:diamondblock"
local c_ingot = "default:steel_ingot"

---------------------------------------------------------------------------------------------------
-- Unlocked chest
---------------------------------------------------------------------------------------------------

twchests.register_chest({
    -- Creates twchests:chest_bottomless
    part_name = "bottomless",
    def_table = {
        description = S("Bottomless Chest"),
        tiles = {
            "twchests_chest_bottomless_top.png",
            "twchests_chest_bottomless_top.png",
            "twchests_chest_bottomless_side.png",
            "twchests_chest_bottomless_side.png",
            "twchests_chest_bottomless_front.png",
            "twchests_chest_bottomless_inside.png",
        },
        groups = {choppy = 2, oddly_breakable_by_hand = 2},
        sounds = default.node_sound_wood_defaults(),

        sound_close = "default_chest_close",
        sound_open = "default_chest_open",
    },
    
    grid_x = grid_x,
    grid_y = grid_y,
    large_flag = true,
    max_pages = 0,
})
minetest.register_craft({
    output = "twchests:chest_bottomless",
    recipe = {
        {c_diamond, c_def_chest, c_diamond},
        {c_def_chest, "", c_def_chest},
        {c_diamond, c_def_chest, c_diamond},
    },
})
minetest.register_craft({
    type = "fuel",
    recipe = "twchests:chest_bottomless",
    burntime = 60,
})

---------------------------------------------------------------------------------------------------
-- Locked chest
---------------------------------------------------------------------------------------------------

twchests.register_chest({
    -- Creates twchests:chest_bottomless_locked
    part_name = "bottomless_locked",
    orig_name = {},
    def_table = {
        description = S("Locked Bottomless Chest"),
        tiles = {
            "twchests_chest_bottomless_top.png",
            "twchests_chest_bottomless_top.png",
            "twchests_chest_bottomless_side.png",
            "twchests_chest_bottomless_side.png",
            "twchests_chest_bottomless_locked.png",
            "twchests_chest_bottomless_inside.png",
        },
        groups = {choppy = 2, oddly_breakable_by_hand = 2},
        sounds = default.node_sound_wood_defaults(),

        protected = true,
        sound_close = "default_chest_close",
        sound_open = "default_chest_open",
    },
    
    grid_x = grid_x,
    grid_y = grid_y,
    large_flag = true,
    max_pages = 0,
})
minetest.register_craft({
    output = "twchests:chest_bottomless_locked",
    recipe = {
        {c_diamond, c_def_chest, c_diamond},
        {c_def_chest, c_ingot, c_def_chest},
        {c_diamond, c_def_chest, c_diamond},
    }
})
minetest.register_craft({
    type = "shapeless",
    output = "twchests:chest_bottomless_locked",
    recipe = {"twchests:chest_bottomless", c_ingot},
})    
minetest.register_craft({
    type = "fuel",
    recipe = "twchests:chest_bottomless_locked",
    burntime = 60,
})
