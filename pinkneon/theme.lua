-------------------------------
--  "Pink Neon" awesome theme  --
--    By Ouardane J   --
-------------------------------

-- Alternative icon sets and widget icons:
--  * http://awesome.naquadah.org/wiki/Nice_Icons

-- {{{ Main
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
    themename     = "/pinkneon"
    if not awful.util.file_readable(themes .. themename .. "/theme.lua") then
      themes = sharedthemes
      end
      themedir      = themes .. themename

wallpaper1    = themedir .. "/background.png"
wpscript      = home .. "/.wallpaper"


if awful.util.file_readable(wallpaper1) then
  theme.wallpaper = wallpaper1
else awful.util.file_readable(wpscript) then
 theme.wallpaper_cmd = { "sh " .. wpscript }
end

theme.wallpaper = "/usr/share/awesome/themes/pinkneon/background.png"
-- }}}

-- {{{ Styles
theme.font      = "Sans 10"

-- {{{ Colors
theme.fg_normal  = "#aaaaaa"
theme.fg_focus   = "#111111"
theme.fg_urgent  = "#ffffff"
theme.bg_normal  = "#1a1a1a00"
theme.bg_focus   = "#ff0066"
theme.bg_urgent  = "#ff0033"
theme.bg_systray = theme.bg_normal
-- }}}

-- {{{ Borders
theme.border_width  = 1
theme.border_normal = "#1a1a1a"
theme.border_focus  = "#ff0066"
theme.border_marked = "#ff0033"
-- }}}

-- {{{ Titlebars
theme.titlebar_bg_focus  = "#ff0066"
theme.titlebar_bg_normal = "#1a1a1a"
-- }}}

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- [taglist|tasklist]_[bg|fg]_[focus|urgent]
-- titlebar_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- Example:
--theme.taglist_bg_focus = "#CC9393"
-- }}}

-- {{{ Widgets
-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.fg_widget        = "#AECF96"
--theme.fg_center_widget = "#88A175"
--theme.fg_end_widget    = "#FF5656"
--theme.bg_widget        = "#494B4F"
--theme.border_widget    = "#3F3F3F"

--Assault Battery Widget
theme.as_charging = "#66ff00"
theme.as_critical = "#ff0033"
-- }}}

-- {{{ Mouse finder
theme.mouse_finder_color = "#CC9393"
-- mouse_finder_[timeout|animate_timeout|radius|factor]
-- }}}

-- {{{ Menu
-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_height = 15
theme.menu_width  = 100
-- }}}

-- {{{ Icons
-- {{{ Taglist
theme.taglist_squares_sel   = themes .. "/taglist/squarefz.png"
theme.taglist_squares_unsel = themedir .. "/taglist/squarez.png"
--theme.taglist_squares_resize = "false"
-- }}}

-- {{{ Misc
theme.awesome_icon           = themedir .. "/awesome-icon.png"
theme.menu_submenu_icon      = themes .. "/default/submenu.png"
-- }}}

-- {{{ Layout
theme.layout_tile       = themedir .. "/layouts/tile.png"
theme.layout_tileleft   = themedir .. "/layouts/tileleft.png"
theme.layout_tilebottom = themedir .. "/layouts/tilebottom.png"
theme.layout_tiletop    = themedir .. "/layouts/tiletop.png"
theme.layout_fairv      = themedir .. "/layouts/fairv.png"
theme.layout_fairh      = themedir .. "/layouts/fairh.png"
theme.layout_spiral     = themedir .. "/layouts/spiral.png"
theme.layout_dwindle    = themedir .. "/layouts/dwindle.png"
theme.layout_max        = themedir .. "/layouts/max.png"
theme.layout_fullscreen = themedir .. "/layouts/fullscreen.png"
theme.layout_magnifier  = themedir .. "/layouts/magnifier.png"
theme.layout_floating   = themedir .. "/layouts/floating.png"
-- }}}

-- {{{ Titlebar
theme.titlebar_close_button_focus  = themedir .. "/titlebar/close_focus.png"
theme.titlebar_close_button_normal = themedir .. "/titlebar/close_normal.png"

theme.titlebar_ontop_button_focus_active  = themedir .. "/titlebar/ontop_focus_active.png"
theme.titlebar_ontop_button_normal_active = themedir .. "/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_inactive  = themedir .. "/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_inactive = themedir .. "/titlebar/ontop_normal_inactive.png"

theme.titlebar_sticky_button_focus_active  = themedir .. "/titlebar/sticky_focus_active.png"
theme.titlebar_sticky_button_normal_active = themedir .. "/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_inactive  = themedir .. "/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_inactive = themedir .. "/titlebar/sticky_normal_inactive.png"

theme.titlebar_floating_button_focus_active  = themedir .. "/titlebar/floating_focus_active.png"
theme.titlebar_floating_button_normal_active = themedir .. "/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_inactive  = themedir .. "/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_inactive = themedir .. "/titlebar/floating_normal_inactive.png"

theme.titlebar_maximized_button_focus_active  = themedir .. "/titlebar/maximized_focus_active.png"
theme.titlebar_maximized_button_normal_active = themedir .. "/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_inactive  = themedir .. "/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_inactive = themedir .. "/titlebar/maximized_normal_inactive.png"
-- }}}
-- }}}

return theme
