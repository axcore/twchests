---------------------------------------------------------------------------------------------------
-- tweaked chests (twchests) mod for minetest by A S Lewis
--      https://github.com/axcore/twchests
--      Licence (code): LGPL 2.1
--      Licence (media): CC BY-SA 3.0
---------------------------------------------------------------------------------------------------

local S = twchests.intllib

local grid_x = 3
local grid_y = 2

local c_ingot = "default:steel_ingot"

---------------------------------------------------------------------------------------------------
-- Unlocked chest
---------------------------------------------------------------------------------------------------

twchests.register_chest({
    -- Creates twchests:chest_compact
    part_name = "compact",
    def_table = {
        description = S("Compact Chest"),
        tiles = {
            "twchests_chest_compact_top.png",
            "twchests_chest_compact_top.png",
            "twchests_chest_compact_side.png",
            "twchests_chest_compact_side.png",
            "twchests_chest_compact_front.png",
            "twchests_chest_compact_inside.png",
        },
        groups = {choppy = 2, oddly_breakable_by_hand = 2},
        sounds = default.node_sound_wood_defaults(),

        sound_close = "default_chest_close",
        sound_open = "default_chest_open",
    },
    
    grid_x = grid_x,
    grid_y = grid_y,
})
minetest.register_craft({
    output = "twchests:chest_compact",
    recipe = {
        {"", "group:wood", ""},
        {"group:wood", "", "group:wood"},
        {"", "group:wood", ""},
    }
})
minetest.register_craft({
    type = "fuel",
    recipe = "twchests:chest_bottomless",
    burntime = 15,
})

---------------------------------------------------------------------------------------------------
-- Locked chest
---------------------------------------------------------------------------------------------------

twchests.register_chest({
    -- Creates twchests:chest_compact_locked
    part_name = "compact_locked",
    def_table = {
        description = S("Locked Compact Chest"),
        tiles = {
            "twchests_chest_compact_top.png",
            "twchests_chest_compact_top.png",
            "twchests_chest_compact_side.png",
            "twchests_chest_compact_side.png",
            "twchests_chest_compact_locked.png",
            "twchests_chest_compact_inside.png",
        },
        groups = {choppy = 2, oddly_breakable_by_hand = 2},
        sounds = default.node_sound_wood_defaults(),

        protected = true,
        sound_close = "default_chest_close",
        sound_open = "default_chest_open",
    },
    
    grid_x = grid_x,
    grid_y = grid_y,
})
minetest.register_craft({
    output = "twchests:chest_compact_locked",
    recipe = {                    
        {"", "group:wood", ""},
        {"group:wood", c_ingot, "group:wood"},
        {"", "group:wood", ""},
    }
})
minetest.register_craft({
    type = "shapeless",
    output = "twchests:chest_compact_locked",
    recipe = {"twchests:chest_compact", c_ingot},
})    
minetest.register_craft({
    type = "fuel",
    recipe = "twchests:chest_compact_locked",
    burntime = 15,
})
