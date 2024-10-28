local awful = require("awful")
awful.util = require("awful.util")

local theme_assets        = require("beautiful.theme_assets")
local xresources          = require("beautiful.xresources")
local dpi                 = xresources.apply_dpi


-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
-- COLORS
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

local colors = {
    bg_darkest  = '#1a1c22',
    bg_dark     = '#2c2e34',
    bg_light    = '#c489b3',
    bg_lightest = '#efaed4',
    fg_lightest = '#c8ccd4',
    fg_light    = '#d8dce4',
    fg_dark     = '#2c2e34',
    fg_darkest  = '#1a1c22',
    black       = '#1a1c22',
    red         = '#ff6b6b',
    green       = '#8abeb7',
    yellow      = '#f0c674',
    blue        = '#81a2be',
    magenta     = '#c489b3',
    cyan        = '#8abeb7',
    white       = '#c8ccd4'
}

theme = {}

theme.font                = "IosevkaTerm Nerd Font Mono 12"
theme.taglist_font        = "IosevkaTerm Nerd Font Mono 20"

theme.bg_normal           = colors.bg_darkest
theme.bg_focus            = colors.bg_darkest
theme.bg_urgent           = colors.bg_darkest
theme.bg_minimize         = colors.bg_darkest
theme.bg_systray          = colors.bg_darkest

theme.fg_normal           = colors.fg_lightest
theme.fg_focus            = colors.fg_lightest
theme.fg_urgent           = colors.fg_lightest
theme.fg_minimize         = colors.fg_lightest

theme.useless_gap         = dpi(0)
theme.border_width        = dpi(2)
theme.border_normal       = colors.bg_dark
theme.border_focus        = colors.bg_lightest
theme.border_marked       = colors.bg_lightest

theme.taglist_bg_urgent   = colors.bg_lightest
theme.taglist_fg_urgent   = colors.fg_lightest
theme.taglist_bg_occupied = colors.bg_dark
theme.taglist_fg_occupied = colors.fg_light
theme.taglist_bg_empty    = colors.bg_darkest
theme.taglist_fg_empty    = colors.fg_lightest
theme.taglist_bg_focus    = colors.blue
theme.taglist_fg_focus    = colors.fg_dark

theme.tooltip_font         = "Iosevka NF 8"
theme.tooltip_opacity      = 0.9
theme.tooltip_fg_color     = colors.fg_lightest
theme.tooltip_bg_color     = colors.red
theme.tooltip_border_width = dpi(2)
theme.tooltip_border_color = colors.bg_dark

-- dofile(theme_path .. "elements.lua")
-- dofile(theme_path .. "layouts.lua")

return theme

