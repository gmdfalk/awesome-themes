-- byte, awesome3 theme, by mu @ freenode

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
themename     = "/byte"
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

--theme.font          = "-artwiz-cure-*-r-normal-*-*-*-*-*-*-*-iso8859-1"
theme.font          = "cure 10"

theme.bg_normal     = "#262729"
theme.bg_focus      = "#262729"
theme.bg_urgent     = "#262729"
theme.bg_minimize   = "#262729"

theme.fg_normal     = "#fafafa"
theme.fg_focus      = "#659fdb"
theme.fg_urgent     = "#f03669"
theme.fg_minimize   = "#fafafa"

theme.border_width  = "0"
theme.border_normal = "#fafafa"
theme.border_focus  = "#659fdb"
theme.border_marked = "#91231c"

-- Display the taglist squares
theme.taglist_squares_sel   = themedir .. "/taglist/focus.png"
theme.taglist_squares_unsel = themedir .. "/taglist/unfocus.png"

-- Layout icons
theme.layout_fairh = themedir .. "/layouts/fairh.png"
theme.layout_fairv = themedir .. "/layouts/fairv.png"
theme.layout_floating  = themedir .. "/layouts/floating.png"
--theme.layout_magnifier = themedir .. "/layouts/magnifier.png"
--theme.layout_max = themedir .. "/layouts/max.png"
--theme.layout_fullscreen = themedir .. "/layouts/fullscreen.png"
theme.layout_tilebottom = themedir .. "/layouts/tilebottom.png"
theme.layout_tileleft   = themedir .. "/layouts/tileleft.png"
theme.layout_tile = themedir .. "/layouts/tile.png"
theme.layout_tiletop = themedir .. "/layouts/tiletop.png"
--theme.layout_spiral  = themedir .. "/layouts/spiral.png"
--theme.layout_dwindle = themedir .. "/layouts/dwindle.png"

-- Widget icons
theme.widget_sep = themes .. "/icons/byte/seperator.png"
theme.widget_cpu = themes .. "/icons/byte/cpu.png"
theme.widget_temp = themes .. "/icons/byte/temp.png"
theme.widget_mem = themes .. "/icons/byte/mem.png"
theme.widget_spkr = themes .. "/icons/byte/spkr.png"
theme.widget_head = themes .. "/icons/byte/phones.png"
theme.widget_netdown = themes .. "/icons/byte/net_down.png"
theme.widget_netup = themes .. "/icons/byte/net_up.png"
theme.widget_mail = themes .. "/icons/byte/mail.png"
theme.widget_newmail = themes .. "/icons/byte/newmail.png"
theme.widget_pacman = themes .. "/icons/byte/pacman.png"
theme.widget_newpackage = themes .. "/icons/byte/newpackage.png"
theme.widget_batt_full = themes .. "/icons/byte/bat_full.png"
theme.widget_batt_low = themes .. "/icons/byte/bat_low.png"
theme.widget_batt_empty = themes .. "/icons/byte/bat_empty.png"
theme.widget_clock = themes .. "/icons/byte/clock.png"
theme.widget_mpd = themes .. "/icons/byte/note.png"

return theme
-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:encoding=utf-8:textwidth=80
