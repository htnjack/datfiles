pcall(require, "luarocks.loader")

local awful = require("awful")
local beautiful = require("beautiful")

local naughty = require("naughty")
local config = awful.util.getdir("config")

require('awful.autofocus')

NRC = {
    terminal = "alacritty",
    modkey = "Mod4",
    theme = {
        name = "hare",
        wallpaper = "palms-pink.png",
    },
    tags = { "", "󰈹", "", "⭘", "⭘", "⭘", "⭘", "⭘", "󰓇" },
}

beautiful.init(config .. "/theme/" .. NRC.theme.name .. ".lua")
beautiful.wallpaper = config .. "/theme/" .. NRC.theme.wallpaper

local w = require("utils.wallpaper")
awful.screen.connect_for_each_screen(function(s)
    w.set(s)
end)

screen.connect_signal("property::geometry", w.set)

-- Enable sloppy focus, so that focus follows mouse.
client.connect_signal("mouse::enter", function(c)
    c:emit_signal("request::activate", "mouse_enter", {raise = false})
end)
client.connect_signal("focus", function(c) c.border_color = beautiful.border_focus end)
client.connect_signal("unfocus", function(c) c.border_color = beautiful.border_normal end)

local layouts = {
    awful.layout.suit.max,
}
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
