--[[
                                      
     Multicolor Awesome WM config 2.0 
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
themename     = "/multicolor"
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
--theme.taglist_font                =
theme.menu_bg_normal                = "#000000"
theme.menu_bg_focus                 = "#000000"
theme.bg_normal                     = "#000000"
theme.bg_focus                      = "#000000"
theme.bg_urgent                     = "#000000"
theme.fg_normal                     = "#aaaaaa"
theme.fg_focus                      = "#ff8c00"
theme.fg_urgent                     = "#af1d18"
theme.fg_minimize                   = "#ffffff"
theme.fg_black                      = "#424242"
theme.fg_red                        = "#ce5666"
theme.fg_green                      = "#80a673"
theme.fg_yellow                     = "#ffaf5f"
theme.fg_blue                       = "#7788af"
theme.fg_magenta                    = "#94738c"
theme.fg_cyan                       = "#778baf"
theme.fg_white                      = "#aaaaaa"
theme.fg_blu                        = "#8ebdde"
theme.border_width                  = "1"
theme.border_normal                 = "#1c2022"
theme.border_focus                  = "#606060"
theme.border_marked                 = "#3ca4d8"
theme.menu_width                    = "110"
theme.menu_border_width             = "0"
theme.menu_fg_normal                = "#aaaaaa"
theme.menu_fg_focus                 = "#ff8c00"
theme.menu_bg_normal                = "#050505dd"
theme.menu_bg_focus                 = "#050505dd"

theme.ocol                          = "<span color='" .. theme.fg_normal .. "'>"
theme.ccol                          = "</span>"
theme.tasklist_sticky               = theme.ocol .. "[S]" .. theme.ccol
theme.tasklist_ontop                = theme.ocol .. "[T]" .. theme.ccol
theme.tasklist_floating             = theme.ocol .. "[F]" .. theme.ccol
theme.tasklist_maximized_horizontal = theme.ocol .. "[M] " .. theme.ccol
theme.tasklist_maximized_vertical   = ""
theme.tasklist_disable_icon         = true

theme.menu_submenu_icon             = themedir .. "/icons/submenu.png"
theme.widget_temp                   = themedir .. "/icons/temp.png"
theme.widget_uptime                 = themedir .. "/icons/ac.png"
theme.widget_cpu                    = themedir .. "/icons/cpu.png"
theme.widget_weather                = themedir .. "/icons/dish.png"
theme.widget_fs                     = themedir .. "/icons/fs.png"
theme.widget_mem                    = themedir .. "/icons/mem.png"
theme.widget_fs                     = themedir .. "/icons/fs.png"
theme.widget_note                   = themedir .. "/icons/note.png"
theme.widget_note_on                = themedir .. "/icons/note_on.png"
theme.widget_netdown                = themedir .. "/icons/net_down.png"
theme.widget_netup                  = themedir .. "/icons/net_up.png"
theme.widget_mail                   = themedir .. "/icons/mail.png"
theme.widget_batt                   = themedir .. "/icons/bat.png"
theme.widget_clock                  = themedir .. "/icons/clock.png"
theme.widget_vol                    = themedir .. "/icons/spkr.png"

theme.taglist_squares_sel           = themedir .. "/icons/square_a.png"
theme.taglist_squares_unsel         = themedir .. "/icons/square_b.png"

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

theme.layout_txt_tile               = "[t]"
theme.layout_txt_tileleft           = "[tl]"
theme.layout_txt_tilebottom         = "[tb]"
theme.layout_txt_tiletop            = "[tt]"
theme.layout_txt_fairv              = "[f]"
theme.layout_txt_fairh              = "[fh]"
theme.layout_txt_spiral             = "[s]"
theme.layout_txt_dwindle            = "[sd]"
theme.layout_txt_max                = "[m]"
theme.layout_txt_fullscreen         = "[F]"
theme.layout_txt_magnifier          = "[M]"
theme.layout_txt_floating           = "[*]"

-- lain related
theme.useless_gap_width             = 10
theme.layout_txt_cascade            = "[c]"
theme.layout_txt_cascadetile        = "[ct]"
theme.layout_txt_centerwork         = "[lcw]"
theme.layout_txt_termfair           = "[ltf]"
theme.layout_txt_centerfair         = "[lcf]"
theme.layout_txt_uselessfair        = "[lfu]"
theme.layout_txt_uselessfairh       = "[lfhu]"
theme.layout_txt_uselesspiral       = "[lsu]"
theme.layout_txt_uselessdwindle     = "[lsdu]"
theme.layout_txt_uselesstile        = "[ltu]"
theme.layout_txt_uselesstileleft    = "[ltlu]"
theme.layout_txt_uselesstiletop     = "[lttu]"
theme.layout_txt_uselesstilebottom  = "[ltbu]"


return theme
