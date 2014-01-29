--[[
                                   
     Rainbow Awesome WM config 2.0 
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
themename     = "/rainbow"
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
theme.fg_normal                     = "#9E9E9E"
theme.fg_focus                      = "#EBEBFF"
theme.bg_normal                     = "#242424"
theme.bg_focus                      = "#242424"
theme.fg_urgent                     = "#000000"
theme.bg_urgent                     = "#FFFFFF"
theme.border_width                  = 1
theme.border_normal                 = "#242424"
theme.border_focus                  = "#EBEBFF"
theme.taglist_fg_focus              = "#EDEFFF"
theme.taglist_bg_focus              = "#242424"
theme.menu_height                   = "16"
theme.menu_width                    = "150"

theme.ocol                          = "<span color='" .. theme.fg_normal .. "'>"
theme.ccol                          = "</span>"
theme.tasklist_sticky               = theme.ocol .. "[S]" .. theme.ccol
theme.tasklist_ontop                = theme.ocol .. "[T]" .. theme.ccol
theme.tasklist_floating             = theme.ocol .. "[F]" .. theme.ccol
theme.tasklist_maximized_horizontal = theme.ocol .. "[M] " .. theme.ccol
theme.tasklist_maximized_vertical   = ""
theme.tasklist_disable_icon         = true
  
theme.menu_awesome_icon             = themedir .."/icons/awesome.png"
theme.menu_submenu_icon             = themedir .."/icons/submenu.png"
theme.taglist_squares_sel           = themedir .. "/icons/square_sel.png"
theme.taglist_squares_unsel         = themedir .. "/icons/square_unsel.png"
theme.vol_bg                        = themedir .. "/icons/vol_bg.png"

theme.layout_txt_tile               = "[t]"
theme.layout_txt_tileleft           = "[l]"
theme.layout_txt_tilebottom         = "[b]"
theme.layout_txt_tiletop            = "[tt]"
theme.layout_txt_fairv              = "[fv]"
theme.layout_txt_fairh              = "[fh]"
theme.layout_txt_spiral             = "[s]"
theme.layout_txt_dwindle            = "[d]"
theme.layout_txt_max                = "[m]"
theme.layout_txt_fullscreen         = "[F]"
theme.layout_txt_magnifier          = "[M]"
theme.layout_txt_floating           = "[*]"

-- lain related
theme.useless_gap_width             = 10
theme.layout_txt_cascade            = "[cascade]"
theme.layout_txt_cascadetile        = "[cascadetile]"
theme.layout_txt_centerwork         = "[centerwork]"
theme.layout_txt_termfair           = "[termfair]"
theme.layout_txt_centerfair         = "[centerfair]"
theme.layout_txt_uselessfair        = "[uf]"
theme.layout_txt_uselessfairh       = "[ufh]"
theme.layout_txt_uselesspiral       = "[us]"
theme.layout_txt_uselessdwindle     = "[ud]"
theme.layout_txt_uselesstile        = "[ut]"
theme.layout_txt_uselesstileleft    = "[utl]"
theme.layout_txt_uselesstiletop     = "[utt]"
theme.layout_txt_uselesstilebottom  = "[utb]"

return theme
