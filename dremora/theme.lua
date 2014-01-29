--[[
                                   
     Dremora Awesome WM config 2.0 
     github.com/copycat-killer     
                                   
--]]

local awful = require("awful")
awful.util = require("awful.util")

--{{{ Main
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
themename     = "/dremora"
if not awful.util.file_readable(themes .. themename .. "/theme.lua") then
       themes = sharedthemes
end
themedir      = themes .. themename

wallpaper1    = themedir .. "/wall.png"
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

theme.font                          = "Tamsyn 10.5"
theme.taglist_font                  = "Icons 10"
theme.fg_normal                     = "#747474"
theme.fg_focus                      = "#DDDCFF"
theme.bg_normal                     = "#121212"
theme.bg_focus                      = "#121212"
theme.fg_urgent                     = "#CC9393"
theme.bg_urgent                     = "#2A1F1E"
theme.border_width                  = "0"
theme.border_normal                 = "#121212"
theme.border_focus                  = "#292929"
theme.titlebar_bg_focus             = "#292929"

theme.taglist_fg_focus              = "#dddcff"
theme.taglist_bg_focus              = "#121212"
theme.menu_height                   = "16"
theme.menu_width                    = "140"

theme.menu_submenu_icon             = themedir .. "/icons/submenu.png"
theme.taglist_squares_sel           = themedir .. "/icons/square_sel.png"
theme.taglist_squares_unsel         = themedir .. "/icons/square_unsel.png"
theme.arrl_lr_pre                   = themedir .. "/icons/arrl_lr_pre.png"
theme.arrl_lr_post                  = themedir .. "/icons/arrl_lr_post.png"

theme.layout_tile                   = themedir .. "/icons/tile.png"
theme.layout_tilegaps               = themedir .. "/icons/tilegaps.png"
theme.layout_tileleft               = themedir .. "/icons/tileleft.png"
theme.layout_tilebottom             = themedir .. "/icons/tilebottom.png"
theme.layout_tiletop                = themedir .. "/icons/tiletop.png"
theme.layout_fairv                  = themedir .. "/icons/fairv.png"
theme.layout_fairh                  = themedir .. "/icons/fairh.png"
theme.layout_spiral                 = themedir .. "/icons/spiral.png"
theme.layout_dwindle                = themedir .. "/icons/dwindle.png"
theme.layout_max                    = themedir .. "/icons/max.png"
theme.layout_fullscreen             = themedir .. "/icons/fullscreen.png"
theme.layout_magnifier              = themedir .. "/icons/magnifier.png"
theme.layout_floating               = themedir .. "/icons/floating.png"

theme.tasklist_disable_icon         = true
theme.tasklist_floating             = ""
theme.tasklist_maximized_horizontal = ""
theme.tasklist_maximized_vertical   = ""

-- lain related
theme.useless_gap_width             = 10
theme.layout_uselesstile            = themedir .. "/icons/uselesstile.png"
theme.layout_uselesstileleft        = themedir .. "/icons/uselesstileleft.png"
theme.layout_uselesstiletop         = themedir .. "/icons/uselesstiletop.png"

return theme
