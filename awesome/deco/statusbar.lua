local gears            = require("gears")
local awful            = require("awful")
local wibox            = require("wibox")

wallpaper              = require("deco.wallpaper")

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

local clock_widget     = require("widgets.clock")
local separator_widget = require("widgets.separator")
local battery_widget   = require("widgets.battery")


awful.screen.connect_for_each_screen(function(s)
    -- Wallpaper
    wallpaper.set(s)

    -- Create a promptbox for each screen
    s.mypromptbox = awful.widget.prompt()

    -- Create an imagebox widget which will contain an icon indicating which layout we're using.
    -- We need one layoutbox per screen.
    s.mylayoutbox = awful.widget.layoutbox(s)
    s.mylayoutbox:buttons(gears.table.join(
        awful.button({}, 1, function() awful.layout.inc(1) end),
        awful.button({}, 3, function() awful.layout.inc(-1) end),
        awful.button({}, 4, function() awful.layout.inc(1) end),
        awful.button({}, 5, function() awful.layout.inc(-1) end)
    ))

    -- Create a taglist widget
    s.mytaglist = awful.widget.taglist {
        screen = s,
        filter = awful.widget.taglist.filter.all,
    }

    -- Create a tasklist widget
    s.mytasklist = awful.widget.tasklist {
        screen = s,
        -- filter  = awful.widget.tasklist.filter.currenttags,
        bg     = theme.bg_normal
    }

    -- Create the wibox
    s.mywibar = awful.wibar({ position = "bottom", screen = s, height = 20 })

    -- Add widgets to the wibox
    s.mywibar:setup {
        layout = wibox.layout.align.horizontal,
        { -- Left widgets
            layout = wibox.layout.fixed.horizontal,
            s.mytaglist,
            s.mypromptbox,
        },
        s.mytasklist, -- Middle widget
        {             -- Right widgets
            layout = wibox.layout.fixed.horizontal,
            wibox.widget.systray(),
            separator_widget,
            battery_widget {},
            separator_widget,
            clock_widget,
            s.mylayoutbox,
        },
    }
end)
-- }}}
