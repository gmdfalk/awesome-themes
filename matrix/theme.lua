-- matrix, awesome3 theme, by ShdB --

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
themename     = "/matrix"
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
--}}}

theme.font          = "snap"

theme.bg_normal     = "#171717"
theme.bg_focus      = "#171717"
theme.bg_urgent     = "#171717"
theme.bg_minimize   = "#171717"

theme.hilight       = "#ffcc44"

theme.fg_normal     = "#449900"
theme.fg_focus      = "#66FF00"
theme.fg_urgent     = "#cc0000"

theme.graph_bg      = "#333333"
theme.graph_center  = "#779900"
theme.graph_end     = "#ff9900"

theme.border_width  = "1"
theme.border_normal = "#338000"
theme.border_focus  = "#66FF00"
theme.border_marked = "#66FF00"

theme.menu_height   = "10"
theme.menu_width    = "100"

theme.taglist_squares = "true"

theme.battery = themes .. "/icons/matrix/battery.png"
theme.volume = themes .. "/icons/matrix/volume.png"
theme.muted = themes .. "/icons/matrix/muted.png"
theme.cpu = themes .. "/icons/matrix/cpu.png"
theme.temp = themes .. "/icons/matrix/temp.png"
theme.mail = themes .. "/icons/matrix/mail.png"
theme.mem = themes .. "/icons/matrix/mem.png"
theme.wireless = themes .. "/icons/matrix/wireless.png"
theme.network = themes .. "/icons/matrix/network.png"
theme.netdown = themes .. "/icons/him/down-green.png"
theme.netup = themes .. "/icons/him/up-green.png"
theme.mpd_play = themes .. "/icons/matrix/mpd_play.png"
theme.mpd_pause = themes .. "/icons/matrix/mpd_pause.png"
theme.mpd_stop = themes .. "/icons/matrix/mpd_stop.png"

theme.layout_fairh = themedir .. "/layouts/fairh.png"
theme.layout_fairv = themedir .. "/layouts/fairv.png"
theme.layout_floating = themedir .. "/layouts/floating.png"
theme.layout_magnifier = themedir .. "/layouts/magnifier.png"
theme.layout_max = themedir .. "/layouts/max.png"
theme.layout_fullscreen= themedir .. "/layouts/max.png"
theme.layout_tileleft= themedir .. "/layouts/tileleft.png"
theme.layout_tiletop= themedir .. "/layouts/tiletop.png"
theme.layout_spiral = themedir .. "/layouts/spiral.png"
theme.layout_dwindle= themedir .. "/layouts/dwindle.png"
theme.layout_tilebottom = themedir .. "/layouts/tilebottom.png"
theme.layout_tile = themedir .. "/layouts/tile.png"

return theme
