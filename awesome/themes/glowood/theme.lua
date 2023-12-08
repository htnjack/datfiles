local awful = require("awful")
awful.util = require("awful.util")

theme_path = awful.util.getdir("config") .. "/themes/pinkmare/"

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
-- default variables

theme = {}

dofile(theme_path .. "elements.lua")
dofile(theme_path .. "titlebar.lua")
dofile(theme_path .. "layouts.lua")

theme.wallpaper          = theme_path .. "wallpaper.png"
theme.awesome_icon       = theme_path .. "launcher/logo20_kali_black.png"
theme.awesome_subicon    = theme_path .. "launcher/logo20_kali_black.png"

return theme


