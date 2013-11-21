-- worm, awesome3 theme, inspired by Adobe Kuler

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
themename     = "/worm"
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

-- {{{ Styles
theme.font          = "Profont 8"

-- {{{ Colors
theme.fg_normal     = "#54534B"
theme.fg_focus      = "#54534B"
theme.fg_urgent     = "#562630"
--theme.fg_minimize = "#000000"
theme.bg_normal     = "#7D8C7C"
theme.bg_focus      = "#BCBDA5"
theme.bg_urgent     = "#DACEB1"
--theme.bg_minimize = "#81654F"
-- }}}

-- {{{ Borders
theme.border_width  = "1"
theme.border_normal = "#7D8C7C"
theme.border_focus  = "#BCBDA5"
theme.border_marked = "#562630"
-- }}}

-- {{{ Titlebars
theme.titlebar_bg_focus  = "#BCBDA5"
theme.titlebar_bg_normal = "#BCBDA5" --"#7D8C7C"
-- }}}
-- }}}

-- {{{ Icons / Misc.
--
theme.layout_fairh = themes .. "/wabbit/layouts/fairhw.png"
theme.layout_fairv = themes .. "/wabbit/layouts/fairvw.png"
theme.layout_floating  = themes .. "/wabbit/layouts/floatingw.png"
theme.layout_magnifier = themes .. "/wabbit/layouts/magnifierw.png"
theme.layout_max = themes .. "/wabbit/layouts/maxw.png"
theme.layout_fullscreen = themes .. "/wabbit/layouts/fullscreenw.png"
theme.layout_tilebottom = themes .. "/wabbit/layouts/tilebottomw.png"
theme.layout_tileleft   = themes .. "/wabbit/layouts/tileleftw.png"
theme.layout_tile = themes .. "/wabbit/layouts/tilew.png"
theme.layout_tiletop = themes .. "/wabbit/layouts/tiletopw.png"
theme.layout_spiral  = themes .. "/wabbit/layouts/spiralw.png"
theme.layout_dwindle = themes .. "/wabbit/layouts/dwindlew.png"

theme.awesome_icon = themes .. "/wabbit/logo20_orange.png"
-- }}}

return theme
