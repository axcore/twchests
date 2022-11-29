---------------------------------------------------------------------------------------------------
-- tweaked chests (twchests) mod for minetest by A S Lewis
--      https://github.com/axcore/twchests
--      Licence (code): LGPL 2.1
--      Licence (media): CC BY-SA 3.0
---------------------------------------------------------------------------------------------------
-- Includes code/textures from minetest_game/default
--      https://github.com/minetest/minetest_game
--      Licence: LGPL 2.1
---------------------------------------------------------------------------------------------------

local S = minetest.get_translator(minetest.get_current_modname())

---------------------------------------------------------------------------------------------------
-- Create namespaces
---------------------------------------------------------------------------------------------------

twchests = {}

---------------------------------------------------------------------------------------------------
-- Set mod name/version
---------------------------------------------------------------------------------------------------

twchests.name = "twchests"
twchests.ver_max = 1
twchests.ver_min = 0
twchests.ver_rev = 0

twchests.path_mod = minetest.get_modpath(minetest.get_current_modname())

twchests.intllib = S

---------------------------------------------------------------------------------------------------
-- Load files
---------------------------------------------------------------------------------------------------

dofile(twchests.path_mod .. "/shared.lua")
dofile(twchests.path_mod .. "/chest_bottomless.lua")
dofile(twchests.path_mod .. "/chest_compact.lua")
