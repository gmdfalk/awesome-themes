--[[
                                             
     Powerarrow Darker Awesome WM config 2.0 
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
themename     = "/powerarrow-darker"
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

theme.font                          = "Terminus 9"
theme.fg_normal                     = "#DDDDFF"
theme.fg_focus                      = "#F0DFAF"
theme.fg_urgent                     = "#CC9393"
theme.bg_normal                     = "#1A1A1A"
theme.bg_focus                      = "#313131"
theme.bg_urgent                     = "#1A1A1A"
theme.border_width                  = "1"
theme.border_normal                 = "#3F3F3F"
theme.border_focus                  = "#7F7F7F"
theme.border_marked                 = "#CC9393"
theme.titlebar_bg_focus             = "#FFFFFF"
theme.titlebar_bg_normal            = "#FFFFFF"
theme.taglist_fg_focus              = "#D8D782"
theme.tasklist_bg_focus             = "#1A1A1A"
theme.tasklist_fg_focus             = "#D8D782"
theme.textbox_widget_margin_top     = 1
theme.notify_fg                     = theme.fg_normal
theme.notify_bg                     = theme.bg_normal
theme.notify_border                 = theme.border_focus
theme.awful_widget_height           = 14
theme.awful_widget_margin_top       = 2
theme.mouse_finder_color            = "#CC9393"
theme.menu_height                   = "16"
theme.menu_width                    = "140"

theme.menu_submenu_icon             = themedir .. "/icons/submenu.png"
theme.taglist_squares_sel           = themedir .. "/icons/square_sel.png"
theme.taglist_squares_unsel         = themedir .. "/icons/square_unsel.png"

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

theme.arrl                          = themedir .. "/icons/arrl.png"
theme.arrl_dl                       = themedir .. "/icons/arrl_dl.png"
theme.arrl_ld                       = themedir .. "/icons/arrl_ld.png"

theme.widget_ac                     = themedir .. "/icons/ac.png"
theme.widget_battery                = themedir .. "/icons/battery.png"
theme.widget_battery_low            = themedir .. "/icons/battery_low.png"
theme.widget_battery_empty          = themedir .. "/icons/battery_empty.png"
theme.widget_mem                    = themedir .. "/icons/mem.png"
theme.widget_cpu                    = themedir .. "/icons/cpu.png"
theme.widget_temp                   = themedir .. "/icons/temp.png"
theme.widget_net                    = themedir .. "/icons/net.png"
theme.widget_hdd                    = themedir .. "/icons/hdd.png"
theme.widget_music                  = themedir .. "/icons/note.png"
theme.widget_music_on               = themedir .. "/icons/note_on.png"
theme.widget_vol                    = themedir .. "/icons/vol.png"
theme.widget_vol_low                = themedir .. "/icons/vol_low.png"
theme.widget_vol_no                 = themedir .. "/icons/vol_no.png"
theme.widget_vol_mute               = themedir .. "/icons/vol_mute.png"
theme.widget_mail                   = themedir .. "/icons/mail.png"
theme.widget_mail_on                = themedir .. "/icons/mail_on.png"

theme.tasklist_disable_icon         = true
theme.tasklist_floating             = ""
theme.tasklist_maximized_horizontal = ""
theme.tasklist_maximized_vertical   = ""

return theme
