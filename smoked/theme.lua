-- smoked, awesome3 theme, by zhuravlik
-- OR snail, by Ghuff, based on smoked

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
themename     = "/smoked"
if not awful.util.file_readable(themes .. themename .. "/theme.lua") then
       themes = sharedthemes
end
themedir      = themes .. themename

snail = 1

if snail == 1 then
  wallpaper1    = themedir .. "/snail.jpg"
else
  wallpaper1    = themedir .. "/background.png"
end
wallpaper2    = themedir .. "/background.jpg"
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
if snail == 1 then
    theme.font = "Droid Sans 8"
    theme.tasklist_font = "Droid Sans 8"
    theme.taglist_font = "Droid Sans 9"
    theme.bg_normal     = "#61645B"
    theme.bg_focus      = "#8D8873"
    theme.bg_urgent     = "#DC8536"
    theme.bg_minimize   = "#352E2A"
    theme.fg_normal     = "#E7E5DE"
    theme.fg_focus      = "#F5F5F5"
    theme.batt_ok = "#79B94A"
    theme.batt_danger = "#CBF045"
    theme.batt_dying  = "#FC5D44"
else
    theme.font          = "sans 8"
    theme.bg_normal     = "#7f7f7dee"
    theme.bg_focus      = "#616163ee"
    theme.bg_urgent     = "#ff0000ee"
    theme.bg_minimize   = "#303535ee"
    theme.fg_normal     = "#D7D6D2"
    theme.fg_focus      = "#cacccc"
end

theme.fg_urgent     = "#f7f7f7"
theme.fg_minimize = "#b9bbbb"
theme.border_width  = "1"
theme.border_normal = "#cbc8c1"
theme.border_focus  = "#282421"
theme.border_marked = "#f7f7f7"

-- Display the taglist squares
theme.taglist_squares_sel = themedir .. "/taglist/squarefw.png"
theme.taglist_squares_unsel = themedir .. "/taglist/square.png"

theme.tasklist_floating_icon = themedir .. "/tasklist/floatingw.png"

-- Variables set for theming menu
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_submenu_icon = themedir .. "/submenu.png"
theme.menu_height   = "15"
theme.menu_width    = "100"

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--bg_widget    = #cc0000

-- Define the image to load
theme.titlebar_close_button_normal = themedir .. "/titlebar/close_normal.png"
theme.titlebar_close_button_focus = themedir .. "/titlebar/close_focus.png"

theme.titlebar_ontop_button_normal_inactive = themedir .. "/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive = themedir .. "/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active = themedir .. "/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active = themedir .. "/titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive = themedir .. "/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive = themedir .. "/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active = themedir .. "/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active = themedir .. "/titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive = themedir .. "/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive = themedir .. "/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active = themedir .. "/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active = themedir .. "/titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = themedir .. "/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive = themedir .. "/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active = themedir .. "/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active = themedir .. "/titlebar/maximized_focus_active.png"

-- You can use your own layout icons like this:
theme.layout_fairh = themedir .. "/layouts/fairh.png"
theme.layout_fairv = themedir .. "/layouts/fairv.png"
theme.layout_floating = themedir .. "/layouts/floating.png"
theme.layout_magnifier = themedir .. "/layouts/magnifier.png"
theme.layout_max = themedir .. "/layouts/max.png"
theme.layout_fullscreen = themedir .. "/layouts/fullscreen.png"
theme.layout_tilebottom = themedir .. "/layouts/tilebottom.png"
theme.layout_tileleft = themedir .. "/layouts/tileleft.png"
theme.layout_tile = themedir .. "/layouts/tile.png"
theme.layout_tiletop = themedir .. "/layouts/tiletop.png"

--theme.awesome_icon = "/usr/share/awesome/icons/awesome16.png"
theme.awesome_icon = themedir .. "/awesome-icon-3.png"

return theme
-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:encoding=utf-8:textwidth=80
