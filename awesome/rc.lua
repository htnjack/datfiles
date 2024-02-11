pcall(require, "luarocks.loader")

local awful = require("awful")
local beautiful = require("beautiful")

local home = os.getenv("HOME")

require('awful.autofocus')

NRC = {
    terminal = "alacritty",
    modkey = "Mod4",
    theme = {
        name = "hare",
        wallpaper = "palms-pink.png",
    },
    tags = { "", "󰾔", "", "⭘", "⭘", "⭘", "⭘", "⭘", "⭘" },
}

beautiful.init(home .. "/.config/awesome/theme/" .. NRC.theme.name .. ".lua")

local layouts = {
    awful.layout.suit.spiral,
    awful.layout.suit.max,
    awful.layout.suit.floating,
    awful.layout.suit.fair
}
-- Needed for some reason
local tags = {}
awful.screen.connect_for_each_screen(function(s)
    -- Each screen has its own tag table.
    tags[s] = awful.tag(
        NRC.tags, s, layouts[1]
    )
end)

local rules = require("rules")


-- Binding still need NRC as dependency
local binding = {
    globalbuttons = require("binding.globalbuttons"),
    clientbuttons = require("binding.clientbuttons"),
    globalkeys    = require("binding.globalkeys"),
    bindtotags    = require("binding.bindtotags"),
    clientkeys    = require("binding.clientkeys")
}

NRC.globalkeys = binding.globalkeys()
NRC.globalkeys = binding.bindtotags(NRC.globalkeys)
root.buttons(binding.globalbuttons())
root.keys(NRC.globalkeys)

awful.rules.rules = rules(
    binding.clientkeys(),
    binding.clientbuttons()
)

require("deco.statusbar")

awful.spawn.with_shell("~/.config/awesome/autorun.sh")
