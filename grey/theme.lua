-- grey, awesome3 theme, by bioe007 perrydothargraveatgmaildotcom

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
themename     = "/grey"
if not awful.util.file_readable(themes .. themename .. "/theme.lua") then
       themes = sharedthemes
end
themedir       = themes .. themename

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

theme.font     = "HeldustryFTVBasic Black 8"
-- theme.font     = "mintsstrong 16"
-- theme.font     = "SFAutomatonCondensed 9"
-- theme.font     = "PTF NORDIC Std 11"
-- theme.font     = "MANDATORY 9"

theme.bg_normal          = "#ababab"
theme.bg_focus           = "#8d8d8d"
theme.bg_urgent          = "#288ef6"
theme.fg_normal          = "#555555"
theme.fg_focus           = "#dfdfdf"
theme.fg_urgent          = "#ffaaaa"

-- specific
theme.fg_sb_hi           = "#343434"
theme.fg_batt_mid        = "#008600"
theme.fg_batt_low        = "#e4f01b"
theme.fg_batt_crit       = "#a84007"
theme.widg_cpu_st        = "#343434"
theme.widg_cpu_mid       = "#888888"
theme.widg_cpu_end       = "#cccccc"
theme.vol_bg             = "#000000"

theme.border_width  = 2
theme.border_normal = "#000000"
theme.border_focus  = "#3accc5"
theme.border_marked = "#0000f0"
theme.tooltip_border_color = theme.fg_focus

-- calendar settings
--theme.calendar_w         = 160
--theme.calendar_fg        = theme.bg_normal
--theme.calendar_bg        = theme.fg_normal

theme.menu_height        = 15
theme.menu_width         = 100

theme.titlebar_bg_focus  = "#6d6d6d"
theme.titlebar_bg_normal = "#ababab"

-- taglist squares
theme.taglist_squares       = true
theme.taglist_squares_sel   = themedir .. "/taglist/squarefw.png"
theme.taglist_squares_unsel = themedir .. "/taglist/squarew.png"

theme.tasklist_floating_icon = themedir .. "/tasklist/float.gif"

theme.titlebar_close_button        = true
theme.titlebar_close_button_normal = themedir .. "/titlebar/close-inactive.png"
theme.titlebar_close_button_focus  = themedir .. "/titlebar/close-active.png"

-- You can use your own layout icons like this:
theme.layout_dwindle    = themedir .. "/layouts/dwindle.png"
theme.layout_fairh      = themedir .. "/layouts/fairh.png"
theme.layout_fairv      = themedir .. "/layouts/fairv.png"
theme.layout_floating   = themedir .. "/layouts/floating.png"
theme.layout_magnifier  = themedir .. "/layouts/magnifier.png"
theme.layout_max        = themedir .. "/layouts/max.png"
theme.layout_spiral     = themedir .. "/layouts/spiral.png"
theme.layout_tilebottom = themedir .. "/layouts/tilebottom.png"
theme.layout_tileleft   = themedir .. "/layouts/tileleft.png"
theme.layout_tile       = themedir .. "/layouts/tile.png"
theme.layout_tiletop    = themedir .. "/layouts/tiletop.png"

return theme
-- vim:set filetype=lua textwidth=80 fdm=marker tabstop=4 shiftwidth=4 expandtab smarttab autoindent smartindent: --
