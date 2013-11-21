require("awful")
require("awful.autofocus")
require("naughty")
require("vicious")
require("shifty")
require("beautiful")

-- Variable definitions
local home          = os.getenv("HOME")
local confdir       = awful.util.getdir("config") .. "/"
local theme         = "theme.lua"
local terminal      = "urxvt"
local browser       = "luakit"
local filemanager   = terminal .. " -name 'file manager' -e ranger"
local editor        = os.getenv("EDITOR") or "vim "
local editor_cmd    = terminal .. " -name 'vim' -e " .. editor
local modkey        = "Mod4"

beautiful.init(confdir .. theme)
awful.util.spawn_with_shell(beautiful.wallpaper)

-- Startup
function run_once(program)
	if not program then
		do return nil end
	end
	awful.util.spawn_with_shell("pgrep -f -u $USER -x " .. program .. " || (" .. program .. ")")
end

--run_once("urxvtd")
run_once("cairo-compmgr")
run_once("mpd ~/.mpd/mpd.conf")
run_once(terminal .. " -name htop -e htop")
run_once(browser)

-- Table of layouts, order matters.
layouts = {
	awful.layout.suit.tile,
	awful.layout.suit.tile.bottom,
	awful.layout.suit.max,
        awful.layout.suit.floating,
}

-- Tags
shifty.config.tags = {
	["sys"] = {init = true, position = 1, mwfact = 0.50},
	["www"] = {init = false, position = 2, exclusive = true, max_clients = 1, spawn = run_once(browser)},
	["file"]  = {rel_index = 1},
	["gimp"]  = {layout = awful.layout.suit.floating, spawn = "gimp"},
	["vim"]   = {mwfact = 0.50},
	["irc"]   = {exclusive = true, max_clients = 1, spawn = terminal .. " -name irssi -e irssi"},
	["music"] = { },
	["code"]  = { },
        ["game"] = { },
}

shifty.config.apps = {
	{match = {terminal}, slave = true},
	{match = {"Firefox.*", "Vimperator", "Namoroka", "luakit"}, tag = "www"},
	{match = {"file manager"}, tag = "file"},
	{match = {"Gimp"}, tag = "gimp"}, 
	{match = {"gimp%-image%-window"}, geometry = {175,15,674,570} },
	{match = {"^gimp%-toolbox$"}, geometry = {0,15,175,570}, slave = true },
	{match = {"^gimp%-dock$"}, geometry = {849,15,175,570}, slave = true }, 
	{match = {"alsamixer", "wicd", "pacman", "htop"}, tag = "sys", slave = true},
	{match = {editor, "vim"}, tag = "code"},
	{match = {"irssi"}, tag = "irc"},
	{match = {"cmus", "ncmpcpp"}, tag = "music"},
	{match = {"codeblocks"}, tag = "code"},
        {match = {"game"}, tag = "game"},
	{match = {""}, honorsizehints = false, buttons = {
		button({      }, 1,
		function (c)
			client.focus = c; c:raise()
		end),
		button({modkey}, 1,
		function (c)
			awful.mouse.client.move()
		end),
		button({modkey}, 3,
		function (c)
			awful.mouse.client.resize()
		end),
	},},
}

shifty.config.defaults = {
	layout         = awful.layout.suit.tile,
	ncol           = 1,
	nmaster        = 1,
	guess_name     = true,
	guess_position = true,
}

-- Custom layout widget
layout_widget = widget({ type = "textbox" })
layout_widget:buttons(awful.util.table.join(
    awful.button({ }, 1, function ()
        awful.layout.inc(layouts, 1)
    end),
    awful.button({ }, 3, function ()
        awful.layout.inc(layouts, -1)
    end)
))
layout_timer = timer({ timeout = .1})
layout_timer:add_signal("timeout", function()
    layout = awful.layout.get()
    if layout.name == "tile" then
        layout.label = "v"
    elseif layout.name == "tilebottom" then
        layout.label = "h"
    elseif layout.name == "fairv" then
        layout.label = "=" 
    elseif layout.name == "max" then
        layout.label = "+"
    elseif layout.name == "magnifier" then
        layout.label = "m"
    elseif layout.name == "floating" then
        layout.label = "f"
    else
        layout.label = layout.name
    end
    layout_widget.text = "<span color='" .. beautiful.fg_disabled .. "'> " .. layout.label ..  " </span>"
    layout_widget.bg = beautiful.bg_disabled
    layout_timer:start()
end)
layout_timer:start()

-- CPU widget
cpu_widget = widget({ type = "textbox" })
vicious.register(cpu_widget, vicious.widgets.cpu, "<span color='" .. beautiful.fg_title .. "'> cpu </span><span color='" ..  beautiful.fg_normal .. "'>$1% </span>", 3)

-- Temp widget
temp_widget = widget({type = "textbox"})
vicious.register(temp_widget, vicious.widgets.thermal, "<span color='" .. beautiful.fg_title .. "'> temp </span><span color='" .. beautiful.fg_normal .."'>$1°C </span>", 9, "thermal_zone0") 

-- Memory widget
mem_widget = widget({ type = "textbox"})
vicious.register(mem_widget, vicious.widgets.mem, "<span color='" .. beautiful.fg_title .. "'> mem </span><span color='" .. beautiful.fg_normal .. "'>$1% </span>", 9)

-- Network widget
net_widget = widget({ type = "textbox" })
tx = 0.0
rx = 0.0
vicious.register(net_widget, vicious.widgets.net, 
	function (widget, args)
		if args["{wlan0 up_kb}"] == "0.0" then
			tx = "<span color='" .. beautiful.bg_disabled .. "'>tx</span>"
		else	
			tx = "<span color='" .. beautiful.fg_normal .. "'>tx</span>"
		end
		if args["{wlan0 down_kb}"] == "0.0" then
			rx = "<span color='" .. beautiful.bg_disabled .. "'>rx</span>"
		else	
			rx = "<span color='" .. beautiful.fg_normal .. "'>rx</span>"
		end
                return "<span color='" .. beautiful.fg_title .. "'> net </span>" .. tx .. "" .. rx .. " " 
	end, .1)

-- Pacman widget
pacman_widget = widget({type = "textbox"})
vicious.register(pacman_widget, vicious.widgets.pkg, 
	function (widget, args)
                if args[1] == 0 then
                    return ""
                else
		    return "<span color='" .. beautiful.fg_title .. "'> updates </span><span color='" .. beautiful.fg_normal .. "'>" .. args[1] .. " </span>"
		end
	end, 60, "Arch")
pacman_widget:buttons(awful.util.table.join(
	awful.button({ }, 1, function ()
		awful.util.spawn(terminal .. " -name 'pacman' -e yaourt -Syyeu --aur")
	end)
))
pacman_widget:add_signal("mouse::enter", function () pacman_widget.bg = beautiful.bg_hover end)
pacman_widget:add_signal("mouse::leave", function () pacman_widget.bg = beautiful.bg_normal end)

-- Volume widget
  volume_widget = widget({ type = "textbox"})
  vicious.register(volume_widget, vicious.widgets.volume, 
  	function (widget, args)
  		if args[2] == "♩" then
                    volume_widget.bg = beautiful.bg_disabled
  			return "<span color='" .. beautiful.fg_disabled .. "'> vol muted </span>"
  		else
                    volume_widget.bg = beautiful.bg_normal
  			return "<span color='" .. beautiful.fg_title .. "'> vol </span><span color='" .. beautiful.fg_normal .. "'>" .. args[1] .. "% </span>"
                    
  		end
  	end, .1, "Master")
  volume_widget:buttons(awful.util.table.join(
  	awful.button({ }, 1, function () 
  		awful.util.spawn("amixer -q sset Master toggle") 
  	end),
  	awful.button({ }, 3, function () 
  		awful.util.spawn(terminal .. " -name 'alsamixer' -e alsamixer") 
  	end),
  	awful.button({ }, 4, function () 
  		awful.util.spawn("amixer -q sset Master 5dB+", false) 
  	end),
  	awful.button({ }, 5, function () 
  		awful.util.spawn("amixer -q sset Master 5dB-", false) 
  	end)
  ))

-- Battery widget
  widget_battery = widget({type = "textbox"})
  vicious.register(widget_battery, vicious.widgets.bat, 
  	function (widget, args)
  		if args[1] == "-" then
                      widget_battery.bg = beautiful.bg_urgent
  		    return "<span color='" .. beautiful.fg_urgent .. "'> bat -" .. args[3] .. " </span>"
  		elseif args[1] == "+" then
                      widget_battery.bg = beautiful.bg_normal
  			return "<span color='" .. beautiful.fg_title .. "'> bat </span><span color='" .. beautiful.fg_normal .."'>+" .. args[3] .. " </span>"
  		else
                          return ""
  		end
  	end, .1, "BAT0")

-- Mpd widget
local artist = "N/A" 
  music_widget = widget({type = "textbox"})
  vicious.register(music_widget, vicious.widgets.mpd,
  	function (widget, args)
  		if args["{state}"] == "Stop" then
                    music_widget.bg = beautiful.bg_disabled
  		    return "<span color='" .. beautiful.fg_disabled .. "'> music stopped </span>"
  		elseif args["{state}"] == "Pause" then
                    music_widget.bg = beautiful.bg_disabled
                    return "<span color='" .. beautiful.fg_disabled .. "'> music paused </span>"
  		else
                    if args["{Artist}"] == "N/A" then
                        artist = ""
                    else
                        artist = args["{Artist}"] .. " - "
                    end
                    music_widget.bg = beautiful.bg_normal
                    return "<span color='" .. beautiful.fg_title .. "'> music </span><span color='" .. beautiful.fg_normal .. "'>" .. artist .. args["{Title}"] .. " </span>"
		end
	end, 1)
music_widget:buttons(awful.util.table.join(
	awful.button({}, 1, function () 
		awful.util.spawn("mpc toggle", false)
	end),
	awful.button({}, 3, function ()
		awful.util.spawn( terminal .. " -e ncmpcpp")
	end),
	awful.button({}, 4, function ()
		awful.util.spawn("mpc prev", false)
	end),
	awful.button({}, 5, function ()
		awful.util.spawn("mpc next", false)
	end)
))

-- Time widget
time_widget = widget({ type = "textbox" })
vicious.register(time_widget, vicious.widgets.date, " %a %D %I:%M %p ", 61)

topbar = {}
bottombar = {}
promptbox = {}
layoutbox = {}
taglist = {}
taglist.buttons = awful.util.table.join(
	awful.button({ }, 1, awful.tag.viewonly),
	awful.button({ modkey }, 1, awful.client.movetotag),
	awful.button({ }, 3, awful.tag.viewtoggle),
	awful.button({ modkey }, 3, awful.client.toggletag),
	awful.button({ }, 4, awful.tag.viewnext),
	awful.button({ }, 5, awful.tag.viewprev)
)

for s = 1, screen.count() do
	promptbox[s] = awful.widget.prompt({ layout = awful.widget.layout.horizontal.leftright })
	layoutbox[s] = awful.widget.layoutbox(s)
	layoutbox[s]:buttons(awful.util.table.join(
		awful.button({ }, 1, function () 
			awful.layout.inc(layouts, 1) 
		end),
		awful.button({ }, 3, function () 
			awful.layout.inc(layouts, -1)
		end)
	))

	taglist[s] = awful.widget.taglist(s, awful.widget.taglist.label.all, taglist.buttons)

	topbar[s] = awful.wibox({ position = "top", screen = s, height = 12, fg = beautiful.fg_normal, bg = bg_normal })
	bottombar[s] = awful.wibox({ position = "bottom", screen = s, height = 12, fg = beautiful.fg_normal, bg = bg_normal })
	topbar[s].widgets = {
		{
			taglist[s],
                        layout_widget,
			promptbox[s],
			layout = awful.widget.layout.horizontal.leftright
		},
		widget_battery, 
		net_widget,
		mem_widget,
		temp_widget,
		cpu_widget,
                pacman_pacman,
		["layout"] = awful.widget.layout.horizontal.rightleft
	}

	bottombar[s].widgets = {
		{
                        volume_widget,
			music_widget,
			layout = awful.widget.layout.horizontal.leftright
		},
		time_widget,
		["layout"] = awful.widget.layout.horizontal.rightleft
	}
	
end


-- Initialize shifty
shifty.taglist = taglist
shifty.init()

-- Mouse bindings
root.buttons(awful.util.table.join(
	awful.button({ }, 4, awful.tag.viewnext),
	awful.button({ }, 5, awful.tag.viewprev)
))

-- Key bindings
globalkeys = awful.util.table.join(
	awful.key({ modkey,		}, "Left", awful.tag.viewprev),
	awful.key({ modkey,		}, "Right", awful.tag.viewnext),
	awful.key({ modkey, "Control"	}, "Left", shifty.shift_prev),
	awful.key({ modkey, "Control"	}, "Right", shifty.shift_next),
	awful.key({ modkey,		}, "t",
	function()
		shifty.add({ rel_index =1})
	end),
	awful.key({ modkey,		}, "n", shifty.rename),
	awful.key({ modkey,		}, "w", shifty.del),
	awful.key({ modkey,		}, "Escape", awful.tag.history.restore),
	awful.key({ modkey,		}, "j",
	function ()
		awful.client.focus.byidx(1)
		if client.focus then 
			client.focus:raise()
		end
	end),
	awful.key({ modkey,		}, "k",
	function ()
		awful.client.focus.byidx(-1)
		if client.focus then client.focus:raise() 
		end
	end),

	-- Layout manipulation
	awful.key({ modkey, "Shift"	}, "j",
	function ()
		awful.client.swap.byidx(1)
	end),
	awful.key({ modkey, "Shift"	}, "k",
	function ()
		awful.client.swap.byidx(-1)
	end),
	awful.key({ modkey, "Control"	}, "j",
	function ()
		awful.screen.focus_relative(1)
	end),
	awful.key({ modkey, "Control"	}, "k",
	function ()
		awful.screen.focus_relative(-1)
	end),
	awful.key({ modkey,		}, "u", awful.client.urgent.jumpto),
	awful.key({ modkey,		}, "Tab",
	function ()
		awful.client.focus.history.previous()
		if client.focus then
			client.focus:raise()
		end
	end),

	-- Standard program
	awful.key({ modkey,		}, "Return",
	function ()
		awful.util.spawn(terminal)
	end),
	awful.key({ modkey, "Shift"	}, "r", awesome.restart),
	awful.key({ modkey, "Shift"	}, "q", awesome.quit),
	awful.key({ modkey,		}, "l",
	function ()
		awful.tag.incmwfact(0.05)
	end),
	awful.key({ modkey,		}, "h",
	function ()
		awful.tag.incmwfact(-0.05)
	end),
	awful.key({ modkey, "Shift"	}, "h",
	function ()
		awful.tag.incnmaster(1)
	end),
	awful.key({ modkey, "Shift"	}, "l",
	function ()
		awful.tag.incnmaster(-1)
	end),
	awful.key({ modkey, "Control"	}, "h",
	function ()
		awful.tag.incncol(1)
	end),
	awful.key({ modkey, "Control"	}, "l",
	function ()
		awful.tag.incncol(-1)
	end),
	awful.key({ modkey,		}, "space",
	function ()
		awful.layout.inc(layouts,  1)
	end),
	awful.key({ modkey, "Shift"	}, "space",
	function ()
		awful.layout.inc(layouts, -1)
	end),

	-- Prompt
	awful.key({ modkey,		}, "r",
	function ()
		promptbox[mouse.screen]:run()
	end),
        
	awful.key({ modkey,             }, "p",
	function()
		awful.prompt.run({ prompt = "Tweet as: " },
		promptbox[mouse.screen].widget,
		function (username)
			awful.prompt.run({ prompt = "Password: " },
			promptbox[mouse.screen].widget,
			function (password)
				awful.prompt.run({ prompt = "Tweet: "},
				promptbox[mouse.screen].widget,
		        	function (tweet)
					awful.util.spawn( "curl -u " .. username .. ":" .. password .. "  -d status=\"" .. awful.util.escape(tweet) .. "\" -d source=awesomewm -k https://twitter.com/statuses/update.xml")
				end)
			end)
		end,
		function (cmd, cur_pos, ncomp)
			return awful.completion.generic(cmd, cur_pos, ncomp, { "Account1", "Account2" })
		end)
	end)

)

clientkeys = awful.util.table.join(
	awful.key({ modkey,		}, "f",
	function (c)
		c.fullscreen = not c.fullscreen
	end),
	awful.key({ modkey, "Shift"	}, "c",
	function (c)
		c:kill()
	end),
	awful.key({ modkey, "Control"	}, "space", awful.client.floating.toggle),
	awful.key({ modkey, "Control"	}, "Return", 
	function (c) 
		c:swap(awful.client.getmaster()) 
	end),
	awful.key({ modkey,		}, "o", awful.client.movetoscreen),
	awful.key({ modkey, "Control"	}, "r",
	function (c)
		c:redraw()
	end),
	--awful.key({ modkey,		}, "n",
	--function (c)
	--	c.minimized = not c.minimized
	--end),
	awful.key({ modkey,		}, "m",
	function (c)
		c.maximized_horizontal = not c.maximized_horizontal
		c.maximized_vertical   = not c.maximized_vertical
	end)
)

shifty.config.globalkeys = globalkeys
shifty.config.clientkeys = clientkeys
shifty.config.modkey = modkey

-- Bindings / global / shifty.getpos
for i=1, ( shifty.config.maxtags or 9 ) do
	globalkeys = awful.util.table.join(globalkeys, awful.key({ modkey }, i,
	function ()
		local t = awful.tag.viewonly(shifty.getpos(i))
	end))
	globalkeys = awful.util.table.join(globalkeys, awful.key({ modkey, "Control" }, i,
	function ()
		local t = shifty.getpos(i)
		t.selected = not t.selected
	end))
	globalkeys = awful.util.table.join(globalkeys, awful.key({ modkey, "Control", "Shift" }, i,
	function ()
		if client.focus then
			awful.client.toggletag(shifty.getpos(i))
		end
	end))
	-- move clients to other tags
	globalkeys = awful.util.table.join(globalkeys, awful.key({ modkey, "Shift" }, i,
	function ()
		if client.focus then
			local t = shifty.getpos(i)
			awful.client.movetotag(t)
			awful.tag.viewonly(t)
		end
	end))
end

clientbuttons = awful.util.table.join(
	awful.button({	      }, 1,
	function (c) 
		client.focus = c; c:raise()
	end),
	awful.button({ modkey }, 1, awful.mouse.client.move),
	awful.button({ modkey }, 3, awful.mouse.client.resize))

-- Set keys
root.keys(globalkeys)

-- Signals
-- Signal function to execute when a new client appears.
client.add_signal("manage",
function (c, startup)
	-- Enable sloppy focus
	c:add_signal("mouse::enter",
	function(c)
		if awful.layout.get(c.screen) ~= awful.layout.suit.magnifier
			and awful.client.focus.filter(c) then
			client.focus = c
		end
	end)
	if not startup then
		-- Set the windows at the slave,
		-- i.e. put it at the end of others instead of setting it master.
		-- awful.client.setslave(c)
		-- Put windows in a smart way, only if they does not set an initial position.
		if not c.size_hints.user_position and not c.size_hints.program_position then
			awful.placement.no_overlap(c)
			awful.placement.no_offscreen(c)
		end
	end
end)

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80:foldmarker={{{,}}}
