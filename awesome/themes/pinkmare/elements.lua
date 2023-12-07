local gmc                  = require("themes.pinkmare.gmc")

local theme_assets         = require("beautiful.theme_assets")
local xresources           = require("beautiful.xresources")
local dpi                  = xresources.apply_dpi

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

theme.font                 = "Iosevka NF 8"  -- "Tamsyn 10" -- "Sans 8"
theme.taglist_font         = "Inconsolata Medium 8"

theme.bg_normal            = gmc.color.bg0
theme.bg_focus             = gmc.color.bg2
theme.bg_urgent            = gmc.color.bg3
theme.bg_minimize          = gmc.color.bg0
theme.bg_systray           = gmc.color.bg0

theme.fg_normal            = gmc.color.fg
theme.fg_focus             = gmc.color.red
theme.fg_urgent            = gmc.color.fg
theme.fg_minimize          = gmc.color.fg

theme.useless_gap          = dpi(0)
theme.border_width         = dpi(1)

theme.border_normal        = gmc.color.bg3
theme.border_focus         = gmc.color.red
theme.border_marked        = gmc.color.bg3

theme.taglist_bg_urgent    = gmc.color.bg3
theme.taglist_fg_urgent    = gmc.color.fg
theme.taglist_bg_occupied  = gmc.color.bg1
theme.taglist_fg_occupied  = gmc.color.fg
theme.taglist_bg_empty     = gmc.color.bg0
theme.taglist_fg_empty     = gmc.color.fg
theme.taglist_bg_focus     = gmc.color.bg2
theme.taglist_fg_focus     = gmc.color.red

theme.tasklist_bg_normal   = gmc.color.bg0
theme.tasklist_fg_normal   = gmc.color.fg
theme.tasklist_bg_focus    = gmc.color.bg2
theme.tasklist_fg_focus    = gmc.color.red

theme.titlebar_bg_normal   = gmc.color.bg0
theme.titlebar_fg_normal   = gmc.color.fg
theme.titlebar_bg_focus    = gmc.color.bg2
theme.titlebar_fg_focus    = gmc.color.red

-- theme.tooltip_font         = "Iosevka NF 8"
-- theme.tooltip_opacity      = 0.9
-- theme.tooltip_fg_color     = gmc.color.gold
-- theme.tooltip_bg_color     = gmc.color.red
-- theme.tooltip_border_width = dpi(2)
-- theme.tooltip_border_color = gmc.color.bg2

local taglist_square_size  = dpi(4)
theme.taglist_squares_sel  = theme_assets.taglist_squares_sel(
    taglist_square_size, gmc.color.red
)
