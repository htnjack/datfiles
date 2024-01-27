local colors              = require("themes.pinkmare.colors")

local theme_assets        = require("beautiful.theme_assets")
local xresources          = require("beautiful.xresources")
local dpi                 = xresources.apply_dpi

-- theme.font                 = "Iosevka NF 12"  -- "Tamsyn 10" -- "Sans 8"
theme.font                = "Iosevka NF 12"
theme.taglist_font        = "Iosevka NF 12"

theme.bg_normal           = colors.bg0
theme.bg_focus            = colors.bg2
theme.bg_urgent           = colors.bg3
theme.bg_minimize         = colors.bg0
theme.bg_systray          = colors.bg0

theme.fg_normal           = colors.fg0
theme.fg_focus            = colors.fg3
theme.fg_urgent           = colors.fg0
theme.fg_minimize         = colors.fg0

theme.useless_gap         = dpi(0)
theme.border_width        = dpi(1)
theme.border_normal       = colors.bg1
theme.border_focus        = colors.bg3
theme.border_marked       = colors.bg3

theme.taglist_bg_urgent   = colors.bg3
theme.taglist_fg_urgent   = colors.fg0
theme.taglist_bg_occupied = colors.bg1
theme.taglist_fg_occupied = colors.fg1
theme.taglist_bg_empty    = colors.bg0
theme.taglist_fg_empty    = colors.fg0
theme.taglist_bg_focus    = colors.bg2
theme.taglist_fg_focus    = colors.fg2

theme.tasklist_bg_normal  = colors.bg0
theme.tasklist_fg_normal  = colors.fg0
theme.tasklist_bg_focus   = colors.bg2
theme.tasklist_fg_focus   = colors.fg2

-- theme.titlebar_bg_normal   = colors.bg0
-- theme.titlebar_fg_normal   = colors.fg0
-- theme.titlebar_bg_focus    = colors.bg2
-- theme.titlebar_fg_focus    = colors.fg2

-- theme.tooltip_font         = "Iosevka NF 8"
-- theme.tooltip_opacity      = 0.9
-- theme.tooltip_fg_color     = gmc.white
-- theme.tooltip_bg_color     = gmc.red
-- theme.tooltip_border_width = dpi(2)
-- theme.tooltip_border_color = gmc.bg2

local taglist_square_size = dpi(4)
theme.taglist_squares_sel = theme_assets.taglist_squares_sel(
    taglist_square_size, colors.fg2
)
