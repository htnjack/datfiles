local colors              = require("themes.pinkmare.colors")

local theme_assets        = require("beautiful.theme_assets")
local xresources          = require("beautiful.xresources")
local dpi                 = xresources.apply_dpi

-- theme.font                 = "Iosevka NF 12"  -- "Tamsyn 10" -- "Sans 8"
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

-- theme.tooltip_font         = "Iosevka NF 8"
-- theme.tooltip_opacity      = 0.9
-- theme.tooltip_fg_color     = gmc.white
-- theme.tooltip_bg_color     = gmc.red
-- theme.tooltip_border_width = dpi(2)
-- theme.tooltip_border_color = gmc.bg2

local taglist_square_size = dpi(8)
