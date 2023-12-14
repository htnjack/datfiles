local gears = require("gears")
local awful = require("awful")
local beautiful = require("beautiful")

local home = os.getenv("HOME")

beautiful.init(home .. "/.config/awesome/themes/" .. RC.vars.theme .. "/theme.lua")

if beautiful.wallpaper then
    for s = 1, screen.count() do
        gears.wallpaper.maximized(beautiful.wallpaper, s, true)
    end
end
