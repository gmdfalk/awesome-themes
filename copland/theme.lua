--[[
                               
     Copland Awesome WM config 
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
themename     = "/copland"
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

theme.font                                      = "Tamsyn 10.5"
theme.fg_normal                                 = "#BBBBBB"
theme.fg_focus                                  = "#78A4FF"
theme.bg_normal                                 = "#111111"
theme.bg_focus                                  = "#111111"
theme.fg_urgent                                 = "#000000"
theme.bg_urgent                                 = "#FFFFFF"
theme.border_width                              = 1
theme.border_normal                             = "#141414"
theme.border_focus                              = "#93B6FF"
theme.taglist_fg_focus                          = "#FFFFEF"
theme.taglist_bg_focus                          = "#111111"
theme.taglist_bg_normal                         = "#111111"
theme.titlebar_bg_normal                        = "#191919"
theme.titlebar_bg_focus                         = "#262626"
theme.menu_height                               = "15"
theme.menu_width                                = "150"

theme.tasklist_sticky                           = ""
theme.tasklist_ontop                            = ""
theme.tasklist_floating                         = ""
theme.tasklist_maximized_horizontal             = ""
theme.tasklist_maximized_vertical               = ""
theme.tasklist_disable_icon                     = true

theme.awesome_icon                              = themedir .."/icons/awesome.png"
theme.menu_submenu_icon                         = themedir .."/icons/submenu.png"
theme.taglist_squares_sel                       = themedir .. "/icons/square_unsel.png"
theme.taglist_squares_unsel                     = themedir .. "/icons/square_unsel.png"
theme.widget_bg                                 = themedir .. "/icons/widget_bg.png"
theme.vol                                       = themedir .. "/icons/vol.png"
theme.vol_low                                   = themedir .. "/icons/vol_low.png"
theme.vol_no                                    = themedir .. "/icons/vol_no.png"
theme.vol_mute                                  = themedir .. "/icons/vol_mute.png"
theme.disk                                      = themedir .. "/icons/disk.png"
theme.ac                                        = themedir .. "/icons/ac.png"
theme.bat                                       = themedir .. "/icons/bat.png"
theme.bat_low                                   = themedir .. "/icons/bat_low.png"
theme.bat_empty                                 = themedir .. "/icons/bat_empty.png"
theme.play                                      = themedir .. "/icons/play.png"
theme.pause                                     = themedir .. "/icons/pause.png"

theme.layout_tile                               = themedir .. "/icons/tile.png"
theme.layout_tileleft                           = themedir .. "/icons/tileleft.png"
theme.layout_tilebottom                         = themedir .. "/icons/tilebottom.png"
theme.layout_tiletop                            = themedir .. "/icons/tiletop.png"
theme.layout_fairv                              = themedir .. "/icons/fairv.png"
theme.layout_fairh                              = themedir .. "/icons/fairh.png"
theme.layout_spiral                             = themedir .. "/icons/spiral.png"
theme.layout_dwindle                            = themedir .. "/icons/dwindle.png"
theme.layout_max                                = themedir .. "/icons/max.png"
theme.layout_fullscreen                         = themedir .. "/icons/fullscreen.png"
theme.layout_magnifier                          = themedir .. "/icons/magnifier.png"
theme.layout_floating                           = themedir .. "/icons/floating.png"

theme.titlebar_close_button_focus               = themedir .. "/icons/titlebar/close_focus.png"
theme.titlebar_close_button_normal              = themedir .. "/icons/titlebar/close_normal.png"

theme.titlebar_ontop_button_focus_active        = themedir .. "/icons/titlebar/ontop_focus_active.png"
theme.titlebar_ontop_button_normal_active       = themedir .. "/icons/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_inactive      = themedir .. "/icons/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_inactive     = themedir .. "/icons/titlebar/ontop_normal_inactive.png"

theme.titlebar_sticky_button_focus_active       = themedir .. "/icons/titlebar/sticky_focus_active.png"
theme.titlebar_sticky_button_normal_active      = themedir .. "/icons/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_inactive     = themedir .. "/icons/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_inactive    = themedir .. "/icons/titlebar/sticky_normal_inactive.png"

theme.titlebar_floating_button_focus_active     = themedir .. "/icons/titlebar/floating_focus_active.png"
theme.titlebar_floating_button_normal_active    = themedir .. "/icons/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_inactive   = themedir .. "/icons/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_inactive  = themedir .. "/icons/titlebar/floating_normal_inactive.png"

theme.titlebar_maximized_button_focus_active    = themedir .. "/icons/titlebar/maximized_focus_active.png"
theme.titlebar_maximized_button_normal_active   = themedir .. "/icons/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_inactive  = themedir .. "/icons/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_inactive = themedir .. "/icons/titlebar/maximized_normal_inactive.png"

-- lain related
theme.useless_gap_width                         = 10
theme.layout_centerfair                         = themedir .. "/icons/centerfair.png"
theme.layout_termfair                           = themedir .. "/icons/termfair.png"
theme.layout_uselessfair                        = themedir .. "/icons/fairv.png"
theme.layout_uselessfairh                       = themedir .. "/icons/fairh.png"
theme.layout_uselessdwindle                     = themedir .. "/icons/dwindle.png"
theme.layout_uselesstile                        = themedir .. "/icons/tile.png"

return theme
