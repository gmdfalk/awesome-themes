-- dust, awesome3 theme, based off of the gtk+ theme dust, by tdy

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
themename     = "/dust"
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

theme.font          = "clean 8"

theme.bg_normal     = "#22222200"
theme.bg_focus      = "#908884"
theme.bg_urgent     = "#cd7171"
theme.bg_minimize   = "#444444"

theme.fg_normal     = "#aaaaaa"
theme.fg_focus      = "#111111"
theme.fg_urgent     = "#ffffff"
theme.fg_minimize   = "#ffffff"

theme.border_width  = "1"
theme.border_normal = "#222222"
theme.border_focus  = "#908884"
theme.border_marked = "#91231c"

theme.bg_widget        = "#333333"
theme.fg_widget        = "#908884"
theme.fg_center_widget = "#636363"
theme.fg_end_widget    = "#ffffff"
theme.fg_off_widget    = "#22211f"

theme.taglist_squares_sel = themedir .. "/taglist14/squaref.png"
theme.taglist_squares_unsel = themedir .. "/taglist14/square.png"

theme.tasklist_floating_icon = sharedthemes .. "/default/tasklist/floatingw.png"

theme.menu_submenu_icon = sharedthemes .. "/default/submenu.png"
theme.menu_height   = "15"
theme.menu_width    = "100"

-- Define the image to load
theme.titlebar_close_button_normal = sharedthemes .. "/default/titlebar/close_normal.png"
theme.titlebar_close_button_focus = sharedthemes .. "/default/titlebar/close_focus.png"

theme.titlebar_ontop_button_normal_inactive = sharedthemes .. "/default/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive = sharedthemes .. "/default/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active = sharedthemes .. "/default/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active = sharedthemes .. "/default/titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive = sharedthemes .. "/default/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive = sharedthemes .. "/default/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active = sharedthemes .. "/default/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active = sharedthemes .. "/default/titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive = sharedthemes .. "/default/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive = sharedthemes .. "/default/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active = sharedthemes .. "/default/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active = sharedthemes .. "/default/titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = sharedthemes .. "/default/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive = sharedthemes .. "/default/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active = sharedthemes .. "/default/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active = sharedthemes .. "/default/titlebar/maximized_focus_active.png"

theme.layout_fairh      = themedir .. "/layouts14/fairhw.png"
theme.layout_fairv      = themedir .. "/layouts14/fairvw.png"
theme.layout_floating   = themedir .. "/layouts14/floatingw.png"
theme.layout_magnifier  = themedir .. "/layouts14/magnifierw.png"
theme.layout_max        = themedir .. "/layouts14/maxw.png"
theme.layout_fullscreen = themedir .. "/layouts14/fullscreenw.png"
theme.layout_tilebottom = themedir .. "/layouts14/tilebottomw.png"
theme.layout_tileleft   = themedir .. "/layouts14/tileleftw.png"
theme.layout_tile       = themedir .. "/layouts14/tilew.png"
theme.layout_tiletop    = themedir .. "/layouts14/tiletopw.png"
theme.layout_spiral     = themedir .. "/layouts14/spiralw.png"
theme.layout_dwindle    = themedir .. "/layouts14/dwindlew.png"

theme.awesome_icon = themedir .. "/awesome14-dust.png"

theme.widget_disk     = themes .. "/icons/dust/disk.png"
theme.widget_ac       = themes .. "/icons/dust/ac.png"
theme.widget_acblink  = themes .. "/icons/dust/acblink.png"
theme.widget_blank    = themes .. "/icons/dust/blank.png"
theme.widget_batfull  = themes .. "/icons/dust/batfull.png"
theme.widget_batmed   = themes .. "/icons/dust/batmed.png"
theme.widget_batlow   = themes .. "/icons/dust/batlow.png"
theme.widget_batempty = themes .. "/icons/dust/batempty.png"
theme.widget_vol      = themes .. "/icons/dust/vol.png"
theme.widget_mute     = themes .. "/icons/dust/mute.png"
theme.widget_pac      = themes .. "/icons/dust/pac.png"
theme.widget_pacnew   = themes .. "/icons/dust/pacnew.png"
theme.widget_mail     = themes .. "/icons/dust/mail.png"
theme.widget_mailnew  = themes .. "/icons/dust/mailnew.png"
theme.widget_temp     = themes .. "/icons/dust/temp.png"
theme.widget_tempwarm = themes .. "/icons/dust/tempwarm.png"
theme.widget_temphot  = themes .. "/icons/dust/temphot.png"
theme.widget_wifi     = themes .. "/icons/dust/wifi.png"
theme.widget_nowifi   = themes .. "/icons/dust/nowifi.png"
theme.widget_mpd      = themes .. "/icons/dust/mpd.png"
theme.widget_play     = themes .. "/icons/dust/play.png"
theme.widget_pause    = themes .. "/icons/dust/pause.png"
theme.widget_ram      = themes .. "/icons/dust/ram.png"

theme.widget_mem      = themes .. "/icons/dust12/ram.png"
theme.widget_swap     = themes .. "/icons/dust12/swap.png"
theme.widget_fs       = themes .. "/icons/dust12/fs_01.png"
theme.widget_fs2      = themes .. "/icons/dust12/fs_02.png"
theme.widget_up       = themes .. "/icons/dust12/up.png"
theme.widget_down     = themes .. "/icons/dust12/down.png"

return theme
-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
