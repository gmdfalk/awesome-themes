-- sunjack, awesome3 theme, by

--{{{ Main
local awful = require("awful")
awful.util = require("awful.util")

theme = {}

home          = os.getenv("HOME")
config        = awful.util.getdir("config")
shared        = "/usr/share/awesome"
if not awful.util.file_readable(shared .. "/icons/awesome16.png") then
    shared    = "/usr/share/local/awesome"
end
sharedicons   = shared .. "/icons"
sharedthemes  = shared .. "/themes"
themes        = config .. "/themes"
themename     = "/sunjack"
if not awful.util.file_readable(themes .. themename .. "/theme.lua") then
       themes = sharedthemes
end
themedir      = themes .. themename

wallpaper1    = themedir .. "/background.jpg"
wallpaper2    = themedir .. "/background.png"
wallpaper3    = sharedthemes .. "/zenburn/zenburn-background.png"
wallpaper4    = sharedthemes .. "/default/background.png"
wpscript      = home .. "/.wallpaper"

if awful.util.file_readable(wallpaper1) then
	theme.wallpaper = wallpaper1
elseif awful.util.file_readable(wallpaper2) then
	theme.wallpaper = wallpaper2
elseif awful.util.file_readable(wpscript) then
	theme.wallpaper_cmd = { "sh " .. wpscript }
elseif awful.util.file_readable(wallpaper3) then
	theme.wallpaper = wallpaper3
else
	theme.wallpaper = wallpaper4
end

if awful.util.file_readable(config .. "/vain/init.lua") then
    theme.useless_gap_width  = "3"
end
--}}}

--/// Styles

theme.font      = "Visitor TT1 BRK 8"

--// Colors
theme.fg_normal = "#808080"
theme.fg_focus  = "#286f8a"
theme.fg_urgent = "#000000"
theme.bg_normal = "#202020"
theme.bg_focus  = "#0f0f0f"
theme.bg_urgent = "#ffc0c0"
--//

--// Borders
theme.border_width  = "3"
theme.border_normal = "#121212"
theme.border_focus  = theme.fg_focus
theme.border_marked = "#000000"
--//

--// Titlebars
theme.titlebar_fg_normal	= "#808080"
theme.titlebar_fg_focus		= "#ffffff"
theme.titlebar_bg_normal	= "#363636ff"
theme.titlebar_bg_focus		= "#000000ff"
theme.titlebar_font			= theme.font or "cure 8"
--//

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- [taglist|tasklist]_[bg|fg]_[focus|urgent]
-- titlebar_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- Example:
theme.taglist_bg_focus = theme.fg_focus
theme.taglist_fg_focus = theme.bg_normal
--theme.tasklist_bg_focus = theme.bg_normal

--////

--// Menu
-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_bg_normal = "#101010ff"
theme.menu_bg_focus  = "#000000ff"
theme.menu_fg_normal = theme.fg_normal
theme.menu_fg_focus  = theme.fg_focus
theme.menu_border_width = "0"
theme.menu_height = "18"
theme.menu_width  = "150"
--//

--//// Icons

--// Taglist
theme.taglist_squares_sel   = themedir .. "/taglist/squarefz.png"
theme.taglist_squares_unsel = themedir .. "/taglist/squarez.png"
theme.taglist_squares_resize = "false"
--//

--// Misc
--theme.awesome_icon           = themedir .. "/awesome-icon.png"
--theme.menu_submenu_icon      = sharedthemes .. "/default/submenu.png"
--theme.tasklist_floating_icon = sharedthemes .. "/default/tasklist/floatingw.png"
--//

--// Layout
theme.layout_tile       = themedir .. "/layouts/tile.png"
theme.layout_tileleft   = themedir .. "/layouts/tileleft.png"
theme.layout_tilebottom = themedir .. "/layouts/tilebottom.png"
theme.layout_tiletop    = themedir .. "/layouts/tiletop.png"
theme.layout_fairv      = themedir .. "/layouts/fairv.png"
theme.layout_fairh      = themedir .. "/layouts/fairh.png"
theme.layout_spiral     = themedir .. "/layouts/spiral.png"
theme.layout_dwindle    = themedir .. "/layouts/dwindle.png"
theme.layout_max        = themedir .. "/layouts/max.png"
theme.layout_fullscreen = themedir .. "/layouts/fullscreen.png"
theme.layout_magnifier  = themedir .. "/layouts/magnifier.png"
theme.layout_floating   = themedir .. "/layouts/floating.png"
--//

--// Titlebar
--[[theme.titlebar_close_button_focus  = themedir .. "/close-focused.png"
theme.titlebar_close_button_normal = themedir .. "/close-unfocused.png"
theme.titlebar_maximized_button_focus_active  = themedir .. "/maximize-focused.png"
theme.titlebar_maximized_button_normal_active = themedir .. "/maximize-unfocused.png"
theme.titlebar_maximized_button_focus_inactive  = themedir .. "/maximize-focused.png"
theme.titlebar_maximized_button_normal_inactive = themedir .. "/maximize-unfocused.png"]]
--//

--////

return theme

