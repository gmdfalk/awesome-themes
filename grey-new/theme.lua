-- grey-new, awesome3 theme, by Andreas Persson (greyscale, grey)

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
themename     = "/grey-new"
if not awful.util.file_readable(themes .. themename .. "/theme.lua") then
  themes = sharedthemes
end
themedir = themes .. themename

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
--}}}

theme.font          = "Monaco 9"

theme.bg_normal     = "#121212"
theme.bg_focus      = "#212121"
theme.bg_urgent     = "#212121"
theme.bg_minimize   = "#121212"

theme.fg_normal     = "#5fafff"
theme.fg_focus      = "#ff8700"
theme.fg_urgent     = "#ff0056"
theme.fg_minimize   = "#ababab"

theme.border_width  = "1"
theme.border_normal = "#515151"
theme.border_focus  = "#ff8700"
theme.border_marked = "#ff0056"

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- [taglist|tasklist]_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- Example:
--theme.taglist_bg_focus = "#ff0000"

-- Display the taglist squares
theme.taglist_squares_sel   = themedir .. "/taglist/squarefw.png"
theme.taglist_squares_unsel = themedir .. "/taglist/squarew.png"

theme.tasklist_square = themedir .. "/tasklist/square2.png"
theme.tasklist_floating_icon = themedir .. "/tasklist/floatingw.png"

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_submenu_icon = themedir .. "/submenu.png"
theme.menu_height = "15"
theme.menu_width  = "100"

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.bg_widget = "#cc0000"

-- Define the image to load
theme.titlebar_close_button_normal = themedir .. "/titlebar/close_normal.png"
theme.titlebar_close_button_focus  = themedir .. "/titlebar/close_focus.png"

theme.titlebar_ontop_button_normal_inactive = themedir .. "/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive  = themedir .. "/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active = themedir .. "/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active  = themedir .. "/titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive = themedir .. "/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive  = themedir .. "/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active = themedir .. "/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active  = themedir .. "/titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive = themedir .. "/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive  = themedir .. "/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active = themedir .. "/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active  = themedir .. "/titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = themedir .. "/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = themedir .. "/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active = themedir .. "/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active  = themedir .. "/titlebar/maximized_focus_active.png"

-- You can use your own layout icons like this:
theme.layout_fairh = themedir .. "/layouts2/fairh.png"
theme.layout_fairv = themedir .. "/layouts2/fairv.png"
theme.layout_floating  = themedir .. "/layouts2/floating.png"
theme.layout_magnifier = themedir .. "/layouts2/magnifier.png"
theme.layout_max = themedir .. "/layouts2/max.png"
theme.layout_fullscreen = themedir .. "/layouts2/fullscreen.png"
theme.layout_tilebottom = themedir .. "/layouts2/tilebottom.png"
theme.layout_tileleft   = themedir .. "/layouts2/tileleft.png"
theme.layout_tile = themedir .. "/layouts2/tile.png"
theme.layout_tiletop = themedir .. "/layouts2/tiletop.png"
theme.layout_spiral  = themedir .. "/layouts2/spiral.png"
theme.layout_dwindle = themedir .. "/layouts2/dwindle.png"

theme.awesome_icon = themedir .. "/awesome14.png"

return theme
