-- bio, awesome3 theme, by bioe007

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
themename     = "/bio"
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

theme.font	  = "Profont 8"
--font          = DejaVu Sans Mono 8

theme.bg_normal     = "#4e6274"
theme.bg_focus      = "#839ab1"
theme.bg_urgent     = "#288ef6"

theme.fg_normal     = "#a8a8dd"
theme.fg_focus      = "#cfffff"
theme.fg_urgent     = "#ffaaaa"

-- specific
theme.fg_sb_hi     = "#cfcfff"
theme.fg_batt_mid  = "#00cb00"
theme.fg_batt_low  = "#e6f21d"
theme.fg_batt_crit = "#f8700a"

theme.border_width  = 1
theme.border_normal = "#000124"
theme.border_focus  = "#4148ea"
theme.border_marked = "#0000f0"

-- calendar settings
theme.calendar_w = 160
theme.calendar_fg = "#cfffff"
theme.calendar_bg = "#4e6274"

theme.menu_height = 15
theme.menu_width = 100

-- There are another variables sets
-- overriding the default one when
-- defined, the sets are:
-- [taglist|tasklist]_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- Example:
--taglist_bg_focus = #ff0000
theme.titlebar_bg_focus = "#839ab1"
theme.titlebar_bg_normal = "#4e6274"

-- Display the taglist squares
theme.taglist_squares = true
theme.taglist_squares_sel = themedir .. "/taglist/squarefw.png"
theme.taglist_squares_unsel = themedir .. "/taglist/squarew.png"

theme.tasklist_floating_icon = themedir .. "/tasklist/float.gif"

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--bg_widget    = #cc0000

-- Display close button inside titlebar
theme.titlebar_close_button = true

-- Define the image to load
-- @ (if titlebar_close_button_[normal|focus] these values are ignored)
theme.titlebar_close_button_normal = themedir .. "/titlebar/close-inactive.png"
theme.titlebar_close_button_focus = themedir .. "/titlebar/close-active.png"

-- You can use your own layout icons like this:
theme.layout_dwindle = themedir .. "/layouts/dwindlew.png"
theme.layout_fairh = themedir .. "/layouts/fairhw.png"
theme.layout_fairv = themedir .. "/layouts/fairvw.png"
theme.layout_floating = themedir .. "/layouts/floatingw.png"
theme.layout_magnifier = themedir .. "/layouts/magnifierw.png"
theme.layout_max = themedir .. "/layouts/maxw.png"
theme.layout_spiral = themedir .. "/layouts/spiralw.png"
theme.layout_tilebottom = themedir .. "/layouts/tilebottomw.png"
theme.layout_tileleft = themedir .. "/layouts/tileleftw.png"
theme.layout_tile = themedir .. "/layouts/tilew.png"
theme.layout_tiletop = themedir .. "/layouts/tiletopw.png"

return theme
