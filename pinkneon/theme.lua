-------------------------------
--  "Zenburn" awesome theme  --
--    By Adrian C. (anrxc)   --
-------------------------------

-- Alternative icon sets and widget icons:
--  * http://awesome.naquadah.org/wiki/Nice_Icons

-- {{{ Main
theme = {}
theme.wallpaper = "~/.config/awesome/themes/pinkneon/background.png"
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
theme.taglist_squares_sel   = "/usr/share/local/awesome/themes/pinkneon/taglist/squarefz.png"
theme.taglist_squares_unsel = "/usr/share/local/awesome/themes/pinkneon/taglist/squarez.png"
--theme.taglist_squares_resize = "false"
-- }}}

-- {{{ Misc
theme.awesome_icon           = "/usr/share/local/awesome/themes/pinkneon/awesome-icon.png"
theme.menu_submenu_icon      = "/usr/share/awesome/themes/default/submenu.png"
-- }}}

-- {{{ Layout
theme.layout_tile       = "/usr/share/local/awesome/themes/pinkneon/layouts/tile.png"
theme.layout_tileleft   = "/usr/share/local/awesome/themes/pinkneon/layouts/tileleft.png"
theme.layout_tilebottom = "/usr/share/local/awesome/themes/pinkneon/layouts/tilebottom.png"
theme.layout_tiletop    = "/usr/share/local/awesome/themes/pinkneon/layouts/tiletop.png"
theme.layout_fairv      = "/usr/share/local/awesome/themes/pinkneon/layouts/fairv.png"
theme.layout_fairh      = "/usr/share/local/awesome/themes/pinkneon/layouts/fairh.png"
theme.layout_spiral     = "/usr/share/local/awesome/themes/pinkneon/layouts/spiral.png"
theme.layout_dwindle    = "/usr/share/local/awesome/themes/pinkneon/layouts/dwindle.png"
theme.layout_max        = "/usr/share/local/awesome/themes/pinkneon/layouts/max.png"
theme.layout_fullscreen = "/usr/share/local/awesome/themes/pinkneon/layouts/fullscreen.png"
theme.layout_magnifier  = "/usr/share/local/awesome/themes/pinkneon/layouts/magnifier.png"
theme.layout_floating   = "/usr/share/local/awesome/themes/pinkneon/layouts/floating.png"
-- }}}

-- {{{ Titlebar
theme.titlebar_close_button_focus  = "/usr/share/local/awesome/themes/pinkneon/titlebar/close_focus.png"
theme.titlebar_close_button_normal = "/usr/share/local/awesome/themes/pinkneon/titlebar/close_normal.png"

theme.titlebar_ontop_button_focus_active  = "/usr/share/local/awesome/themes/pinkneon/titlebar/ontop_focus_active.png"
theme.titlebar_ontop_button_normal_active = "/usr/share/local/awesome/themes/pinkneon/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_inactive  = "/usr/share/local/awesome/themes/pinkneon/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_inactive = "/usr/share/local/awesome/themes/pinkneon/titlebar/ontop_normal_inactive.png"

theme.titlebar_sticky_button_focus_active  = "/usr/share/local/awesome/themes/pinkneon/titlebar/sticky_focus_active.png"
theme.titlebar_sticky_button_normal_active = "/usr/share/local/awesome/themes/pinkneon/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_inactive  = "/usr/share/local/awesome/themes/pinkneon/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_inactive = "/usr/share/local/awesome/themes/pinkneon/titlebar/sticky_normal_inactive.png"

theme.titlebar_floating_button_focus_active  = "/usr/share/local/awesome/themes/pinkneon/titlebar/floating_focus_active.png"
theme.titlebar_floating_button_normal_active = "/usr/share/local/awesome/themes/pinkneon/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_inactive  = "/usr/share/local/awesome/themes/pinkneon/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_inactive = "/usr/share/local/awesome/themes/pinkneon/titlebar/floating_normal_inactive.png"

theme.titlebar_maximized_button_focus_active  = "/usr/share/local/awesome/themes/pinkneon/titlebar/maximized_focus_active.png"
theme.titlebar_maximized_button_normal_active = "/usr/share/local/awesome/themes/pinkneon/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_inactive  = "/usr/share/local/awesome/themes/pinkneon/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_inactive = "/usr/share/local/awesome/themes/pinkneon/titlebar/maximized_normal_inactive.png"
-- }}}
-- }}}

return theme
