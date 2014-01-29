-- zenburn-red, awesome3 theme, by Adrian C. (anrxc), modified by jessor

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
themename     = "/zenburn-red"
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


-- {{{ Styles
theme.font      = "Terminus 8"

-- {{{ Colors
theme.fg_normal = "#DCDCCC"
theme.fg_focus  = "#FFFFFF"
theme.fg_urgent = "#BC0909"
theme.bg_normal = "#181818"
theme.bg_focus  = "#400000"
theme.bg_urgent = theme.bg_normal
-- }}}

-- {{{ Borders
theme.border_width  = 1
theme.border_focus  = "#EE6363"
theme.border_normal = theme.bg_normal 
theme.border_marked = "#622323"
-- }}}

-- {{{ Titlebars
theme.titlebar_bg_focus  = theme.bg_normal
theme.titlebar_bg_normal = theme.bg_normal
-- theme.titlebar_[normal|focus]
-- }}}

-- {{{ Widgets
theme.fg_widget        = "#9ACD32" -- low
theme.fg_center_widget = "#de8120"
theme.fg_end_widget    = "#CC0000" -- high
theme.fg_off_widget    = theme.bg_normal -- bg
theme.fg_netup_widget  = "#9ACD32"
theme.fg_netdn_widget  = theme.border_focus
theme.bg_widget        = theme.bg_urgent 
theme.border_widget    = theme.bg_urgent
-- }}}

-- {{{ Mouse finder
theme.mouse_finder_color = theme.fg_urgent
-- theme.mouse_finder_[timeout|animate_timeout|radius|factor]
-- }}}

-- {{{ Tooltips
-- theme.tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- }}}

-- {{{ Taglist and Tasklist
-- theme.[taglist|tasklist]_[bg|fg]_[focus|urgent]
-- }}}

-- {{{ Menu
-- theme.menu_[bg|fg]_[normal|focus]
-- theme.menu_[height|width|border_color|border_width]
-- }}}
-- }}}


-- {{{ Icons
--
-- {{{ Taglist icons
theme.taglist_squares_sel   = themedir .. "/taglist/squarefz.png"
theme.taglist_squares_unsel = themedir .. "/taglist/squareza.png"
--theme.taglist_squares_resize = "false"
-- }}}

-- {{{ Misc icons
--theme.awesome_icon           = themedir .. "/awesome.png"
--theme.menu_submenu_icon      = "/usr/share/awesome/themes/default/submenu.png"
--theme.tasklist_floating_icon = "/usr/share/awesome/themes/default/tasklist/floatingw.png"
-- }}}

-- {{{ Layout icons
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

-- {{{ Widget icons
theme.widget_cpu    = themes .. "/icons/zenburn/cpu.png"
theme.widget_bat    = themes .. "/icons/zenburn/bat.png"
theme.widget_mem    = themes .. "/icons/zenburn/mem.png"
theme.widget_fs     = themes .. "/icons/zenburn/disk.png"
theme.widget_net    = themes .. "/icons/zenburn/down.png"
theme.widget_netup  = themes .. "/icons/zenburn/up.png"
theme.widget_wifi   = themes .. "/icons/zenburn/wifi.png"
theme.widget_mail   = themes .. "/icons/zenburn/mail.png"
theme.widget_vol    = themes .. "/icons/zenburn/vol.png"
theme.widget_org    = themes .. "/icons/zenburn/cal.png"
theme.widget_date   = themes .. "/icons/zenburn/time.png"
theme.widget_crypto = themes .. "/icons/zenburn/crypto.png"
theme.widget_sep    = themes .. "/icons/zenburn/separator.png"
-- }}}

-- {{{ Titlebar icons
theme.titlebar_close_button_focus  = themedir .. "/titlebar/close_focus.png"
theme.titlebar_close_button_normal = themedir .. "/titlebar/close_normal.png"

theme.titlebar_ontop_button_focus_active    = themedir .. "/titlebar/ontop_focus_active.png"
theme.titlebar_ontop_button_normal_active   = themedir .. "/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_inactive  = themedir .. "/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_inactive = themedir .. "/titlebar/ontop_normal_inactive.png"

theme.titlebar_sticky_button_focus_active    = themedir .. "/titlebar/sticky_focus_active.png"
theme.titlebar_sticky_button_normal_active   = themedir .. "/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_inactive  = themedir .. "/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_inactive = themedir .. "/titlebar/sticky_normal_inactive.png"

theme.titlebar_floating_button_focus_active    = themedir .. "/titlebar/floating_focus_active.png"
theme.titlebar_floating_button_normal_active   = themedir .. "/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_inactive  = themedir .. "/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_inactive = themedir .. "/titlebar/floating_normal_inactive.png"

theme.titlebar_maximized_button_focus_active    = themedir .. "/titlebar/maximized_focus_active.png"
theme.titlebar_maximized_button_normal_active   = themedir .. "/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_inactive  = themedir .. "/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_inactive = themedir .. "/titlebar/maximized_normal_inactive.png"
-- }}}
-- }}}


return theme
