--[[

     Holo Awesome WM theme 3.0
     github.com/lcpz

--]]

local gears = require("gears")
local helpers = require("helpers")
local lain  = require("lain")
local awful = require("awful")
local wibox = require("wibox")
local dpi   = require("beautiful.xresources").apply_dpi

local string, os = string, os
local my_table = awful.util.table or gears.table -- 4.{0,1} compatibility

local theme                                     = {}
theme.icon_font = "Material Icons "
theme.white = "#edeff0"
theme.black = "#121212"
theme.transparent = "#00000000"
theme.background = "#121212FF"
theme.lighter_black = "#4E4E4E"

--- Black
theme.color0 = "#232526"
theme.color8 = "#2c2e2f"

--- Red
theme.color1 = "#df5b61"
theme.color9 = "#e8646a"

--- Green
theme.color2 = "#78b892"
theme.color10 = "#81c19b"

--- Yellow
theme.color3 = "#de8f78"
theme.color11 = "#e79881"

--- Blue
theme.color4 = "#6791c9"
theme.color12 = "#709ad2"

--- Magenta
theme.color5 = "#A790D5"
theme.color13 = "#9B72CF"

--- Cyan
theme.color6 = "#67afc1"
theme.color14 = "#70b8ca"

--- White
theme.color7 = "#e4e6e7"
theme.color15 = "#f2f4f5"

--theme.flash_focus_start_opacity = 0.9
--theme.flash_focus_step = 0.02

theme.default_dir                               = require("awful.util").get_themes_dir() .. "default"
theme.icon_dir                                  = os.getenv("HOME") .. "/.config/awesome/themes/icons"
theme.wallpaper                                 = os.getenv("HOME") .. "/.config/awesome/themes/wall.png"
theme.font                                      = "AestheticIosevka Bold 10"
theme.taglist_font                              = "AestheticIosevka Italic Regular 8"
theme.fg_normal                                 = "#FFFFFF"
theme.fg_focus                                  = "#A790D5"
theme.bg_focus                                  = "#303030"
theme.bg_normal                                 = "#242424"
theme.fg_urgent                                 = "#CC9393"
theme.bg_urgent                                 = "#006B8E"
theme.border_width                              = dpi(1)
theme.border_normal                             = "#303030"
theme.border_focus                              = "#4E4E4E"
theme.taglist_fg_focus                          = "#FFFFFF"
theme.tasklist_bg_normal                        = "#222222"
theme.tasklist_fg_focus                         = "#A790D5"
theme.menu_height                               = dpi(20)
theme.menu_width                                = dpi(160)
theme.menu_icon_size                            = dpi(32)
theme.awesome_icon                              = theme.icon_dir .. "/awesome_icon_white.png"
theme.awesome_icon_launcher                     = theme.icon_dir .. "/awesome_icon.png"
theme.taglist_squares_sel                       = theme.icon_dir .. "/square_sel.png"
theme.taglist_squares_unsel                     = theme.icon_dir .. "/square_unsel.png"
theme.spr_small                                 = theme.icon_dir .. "/spr_small.png"
theme.spr_very_small                            = theme.icon_dir .. "/spr_very_small.png"
theme.spr_right                                 = theme.icon_dir .. "/spr_right.png"
theme.spr_bottom_right                          = theme.icon_dir .. "/spr_bottom_right.png"
theme.spr_left                                  = theme.icon_dir .. "/spr_left.png"
theme.bar                                       = theme.icon_dir .. "/bar.png"
theme.bottom_bar                                = theme.icon_dir .. "/bottom_bar.png"
theme.mpdl                                      = theme.icon_dir .. "/mpd.png"
theme.mpd_on                                    = theme.icon_dir .. "/mpd_on.png"
theme.prev                                      = theme.icon_dir .. "/prev.png"
theme.nex                                       = theme.icon_dir .. "/next.png"
theme.stop                                      = theme.icon_dir .. "/stop.png"
theme.pause                                     = theme.icon_dir .. "/pause.png"
theme.play                                      = theme.icon_dir .. "/play.png"
theme.clock                                     = theme.icon_dir .. "/clock.png"
theme.calendar                                  = theme.icon_dir .. "/cal.png"
theme.cpu                                       = theme.icon_dir .. "/cpu.png"
theme.gpu                                       = theme.icon_dir .. "/gpu.png"
theme.net_up                                    = theme.icon_dir .. "/net_up.png"
theme.net_down                                  = theme.icon_dir .. "/net_down.png"
theme.layout_tile                               = theme.icon_dir .. "/tile.png"
theme.layout_tileleft                           = theme.icon_dir .. "/tileleft.png"
theme.layout_tilebottom                         = theme.icon_dir .. "/tilebottom.png"
theme.layout_tiletop                            = theme.icon_dir .. "/tiletop.png"
theme.layout_fairv                              = theme.icon_dir .. "/fairv.png"
theme.layout_fairh                              = theme.icon_dir .. "/fairh.png"
theme.layout_spiral                             = theme.icon_dir .. "/spiral.png"
theme.layout_dwindle                            = theme.icon_dir .. "/dwindle.png"
theme.layout_max                                = theme.icon_dir .. "/max.png"
theme.layout_fullscreen                         = theme.icon_dir .. "/fullscreen.png"
theme.layout_magnifier                          = theme.icon_dir .. "/magnifier.png"
theme.layout_floating                           = theme.icon_dir .. "/floating.png"
theme.tasklist_plain_task_name                  = true
theme.tasklist_disable_icon                     = true
theme.useless_gap                               = dpi(0)
theme.titlebar_close_button_normal              = theme.default_dir.."/titlebar/close_normal.png"
theme.titlebar_close_button_focus               = theme.default_dir.."/titlebar/close_focus.png"
theme.titlebar_minimize_button_normal           = theme.default_dir.."/titlebar/minimize_normal.png"
theme.titlebar_minimize_button_focus            = theme.default_dir.."/titlebar/minimize_focus.png"
theme.titlebar_ontop_button_normal_inactive     = theme.default_dir.."/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive      = theme.default_dir.."/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active       = theme.default_dir.."/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active        = theme.default_dir.."/titlebar/ontop_focus_active.png"
theme.titlebar_sticky_button_normal_inactive    = theme.default_dir.."/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive     = theme.default_dir.."/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active      = theme.default_dir.."/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active       = theme.default_dir.."/titlebar/sticky_focus_active.png"
theme.titlebar_floating_button_normal_inactive  = theme.default_dir.."/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive   = theme.default_dir.."/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active    = theme.default_dir.."/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active     = theme.default_dir.."/titlebar/floating_focus_active.png"
theme.titlebar_maximized_button_normal_inactive = theme.default_dir.."/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = theme.default_dir.."/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active   = theme.default_dir.."/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active    = theme.default_dir.."/titlebar/maximized_focus_active.png"

theme.musicplr = string.format("%s -e ncmpcpp", awful.util.terminal)

local icomoon = "icomoon 10"
local icomoon_larger = "icomoon 12"
local markup = lain.util.markup
--local accent   = "#9B72CF"
local accent   = "#A790D5"
local active_tag   = "#a0a0a0"
local dim_tag   = "#505050"
local space3 = markup.font("Roboto 3", "   ")
local space = wibox.widget.textbox(markup.font("Roboto 8", "   "))
local space1 = wibox.widget.textbox(markup.font("Roboto 3", "  "))

-- Clock
local mytextclock = wibox.widget.textclock(markup("#FFFFFF", space3 .. "%H:%M"))
mytextclock.font = theme.font
local clock_icon = wibox.widget.textbox(markup.font(icomoon, ""))
local clockbg = wibox.container.background(mytextclock, theme.bg_focus, gears.shape.rectangle)
local clockwidget = wibox.container.margin(clockbg, dpi(0), dpi(1), dpi(5), dpi(5))

-- Calendar
local mytextcalendar = wibox.widget.textclock(markup.fontfg(theme.font, "#FFFFFF", space3 .. "%d %b" .. markup.font("Roboto 5", "")))
local calendar_icon = wibox.widget.textbox(markup.font(icomoon, ""))
theme.cal = lain.widget.cal({
    attach_to = { mytextcalendar },
    icons = "",
    notification_preset = {
        fg = "#FFFFFF",
        bg = theme.bg_normal,
        font = theme.font
    }
})

--local separator = wibox.widget.textbox(markup.fontfg("#3A3A3A", "︱"))
--local separator = wibox.widget.textbox(space3 .. markup.fontfg("monospace 8", "#3A3A3A", "┃") .. space3)
local separator = wibox.widget.textbox(space3 .. markup.fontfg("monospace 8", "#4E4E4E", "🭲") .. space3)

-- MPD
local mpd_icon = wibox.widget.textbox(markup.font(icomoon, ""))
mpd_icon:connect_signal("button::press", function(_, _, _, _) 
	awful.spawn.easy_async_with_shell(theme.musicplr, function() end)
end)
--local mpd_icon = awful.widget.launcher({ image = theme.mpdl, command = theme.musicplr })
local prev_icon = wibox.widget.textbox(markup.font(icomoon_larger, " "))
local next_icon = wibox.widget.textbox(markup.font(icomoon_larger, " "))
local stop_icon = wibox.widget.textbox(markup.font(icomoon_larger, " "))
local pause_icon = wibox.widget.textbox(markup.font(icomoon_larger, ""))
local play_pause_icon = wibox.widget.textbox(markup.font(icomoon_larger, ""))
--
theme.mpd = helpers.playerctl({
    timeout = 0.1,
    settings = function ()
        if playerctl_now.state == "play" then
            play_pause_icon:set_markup(markup.font(icomoon_larger, ""))
        elseif playerctl_now.state == "pause" then
            play_pause_icon:set_markup(markup.font(icomoon_larger, ""))
        else
            play_pause_icon:set_markup(markup.font(icomoon_larger, ""))
        end
    end
})

local musicbg = wibox.container.background(theme.mpd.widget, theme.bg_focus, gears.shape.rectangle)
local musicwidget = wibox.container.margin(musicbg, dpi(0), dpi(0), dpi(5), dpi(5))

musicwidget:buttons(my_table.join(awful.button({ }, 1,
function () awful.spawn(theme.musicplr) end)))
prev_icon:buttons(my_table.join(awful.button({}, 1,
function ()
    os.execute("playerctl previous")
    theme.mpd.update()
end)))
next_icon:buttons(my_table.join(awful.button({}, 1,
function ()
    os.execute("playerctl next")
    theme.mpd.update()
end)))
stop_icon:buttons(my_table.join(awful.button({}, 1,
function ()
    os.execute("playerctl stop")
    theme.mpd.update()
end)))
play_pause_icon:buttons(my_table.join(awful.button({}, 1,
function ()
    os.execute("playerctl play-pause")
    theme.mpd.update()
end)))

-- Battery
local bat = lain.widget.bat({
    settings = function()
        bat_header = " Bat "
        bat_p      = bat_now.perc .. " "
        if bat_now.ac_status == 1 then
            bat_p = bat_p .. "Plugged "
        end
        widget:set_markup(markup.font(theme.font, markup(blue, bat_header) .. bat_p))
    end
})

-- ALSA volume bar
theme.volume = lain.widget.alsabar({
    timeout = 0.1,
    notification_preset = { font = "Monospace 9"},
    --togglechannel = "IEC958,3",
    width = dpi(80), height = dpi(10), border_width = dpi(0),
    colors = {
        background = "#383838",
        unmute     = "#A790D5",
        mute       = "#FF9F9F"
    },
})
theme.volume.bar.paddings = dpi(0)
theme.volume.bar.margins = dpi(4)
local volumewidget = wibox.container.background(theme.volume.bar, theme.bg_focus, gears.shape.rectangle)
volumewidget = wibox.container.margin(volumewidget, dpi(0), dpi(0), dpi(5), dpi(5))

-- Temp text
local temp_text = wibox.widget.textbox(markup.font(theme.font, "°C"))

-- Net
local netdown_icon = wibox.widget.textbox(markup.font("icomoon 15", ""))
local netup_icon = wibox.widget.textbox(markup.font("icomoon 15", ""))

--  
--local net_icon = wibox.widget.textbox(markup.font("icomoon 15", ""))

local net = lain.widget.net({
    settings = function()
        widget:set_markup(markup.font("Roboto 8", "  ") .. markup.font(theme.font, net_now.received .. " - " .. net_now.sent .. markup.font("Roboto 8", "  ")))
    end
})

-- CPU
--
local cpu_icon = wibox.widget.textbox(markup.font(icomoon, "") .. space3)

local cputemp = lain.widget.temp({
  timeout = 5,
  settings = function()
	awful.spawn.easy_async_with_shell("cat /sys/class/hwmon/hwmon1/temp1_input", function(out)
		widget:set_markup(space3 .. markup.font(theme.font, out:match("^%d%d")) .. space3)
	end)
  end
})

-- GPU
--local gpu_icon = wibox.widget.imagebox(theme.gpu)
local gpu_icon = wibox.widget.textbox(markup.font(icomoon, "") .. space3)
local gputemp = helpers.gputemp({
  timeout = 5,
  settings = function()
	widget:set_markup(space3 .. markup.font(theme.font, gputemp_now) .. space3)
  end
})

-- Separators
local first = wibox.widget.textbox('<span font="Roboto 7"> </span>')
local spr_small = wibox.widget.imagebox(theme.spr_small)
local spr_very_small = wibox.widget.imagebox(theme.spr_very_small)
local spr_right = wibox.widget.imagebox(theme.spr_right)
local spr_bottom_right = wibox.widget.imagebox(theme.spr_bottom_right)
local spr_left = wibox.widget.imagebox(theme.spr_left)
local bar = wibox.widget.imagebox(theme.bar)
local bottom_bar = wibox.widget.imagebox(theme.bottom_bar)

local barcolor  = gears.color({
    type  = "linear",
    from  = { dpi(32), 0 },
    to    = { dpi(32), dpi(32) },
    stops = { {0, theme.bg_focus}, {0.25, "#505050"}, {1, theme.bg_focus} }
})

function theme.at_screen_connect(s)
    -- Quake application
    s.quake = lain.util.quake({ app = awful.util.terminal })

    -- If wallpaper is a function, call it with the screen
    local wallpaper = theme.wallpaper
    if type(wallpaper) == "function" then
        wallpaper = wallpaper(s)
    end
    --gears.wallpaper.set("#121212")
    gears.wallpaper.maximized(wallpaper, s, true)

    -- Tags
    awful.tag(awful.util.tagnames, s, awful.layout.layouts[2])

    -- Create a promptbox for each screen
    s.mypromptbox = awful.widget.prompt()
    -- Create an imagebox widget which will contains an icon indicating which layout we're using.
    -- We need one layoutbox per screen.
    s.mylayoutbox = awful.widget.layoutbox(s)
    s.mylayoutbox:buttons(my_table.join(
                           awful.button({}, 1, function () awful.layout.inc( 1) end),
                           awful.button({}, 2, function () awful.layout.set( awful.layout.layouts[1] ) end),
                           awful.button({}, 3, function () awful.layout.inc(-1) end),
                           awful.button({}, 4, function () awful.layout.inc( 1) end),
                           awful.button({}, 5, function () awful.layout.inc(-1) end)))

    -- Create a taglist widget
    --s.mytaglist = awful.widget.taglist(s, awful.widget.taglist.filter.all, awful.util.taglist_buttons, { bg_focus = barcolor })
    local taglist_buttons = gears.table.join(
      awful.button({}, 1, function(t)
      	t:view_only()
      end),
      awful.button({ modkey }, 1, function(t)
      	if client.focus then
      		client.focus:move_to_tag(t)
      	end
      end),
      awful.button({}, 3, awful.tag.viewtoggle),
      awful.button({ modkey }, 3, function(t)
      	if client.focus then
      		client.focus:toggle_tag(t)
      	end
      end),
      awful.button({}, 4, function(t)
      	awful.tag.viewnext(t.screen)
      end),
      awful.button({}, 5, function(t)
      	awful.tag.viewprev(t.screen)
      end)
    )


    s.mytaglist = awful.widget.taglist({
      screen = s,
      filter = awful.widget.taglist.filter.all, 
      layout = wibox.layout.fixed.horizontal,
      widget_template = {
        widget = wibox.container.margin,
	margins = { top = dpi(10), bottom = dpi(10), left = dpi(6), right = dpi(6)},
        forced_width = dpi(35),
        forced_height = dpi(40),
        create_callback = function(self, c3, _)
        	local indicator = wibox.widget({
        		widget = wibox.container.margin,
        		--valign = "center",
        		--halign = "left",
        		{
        			widget = wibox.container.background,
        			shape = gears.shape.rounded_bar,
        		},
        	})

        	--self.indicator_animation = animation:new({
        	--	duration = 0.125,
        	--	easing = animation.easing.linear,
        	--	update = function(self, pos)
        	--		indicator.children[1].forced_width = pos
        	--	end,
        	--})
        
        	self:set_widget(indicator)
        
        	if c3.selected then
        		self.widget.children[1].bg = accent
        		--self.indicator_animation:set(dpi(32))
        	elseif #c3:clients() == 0 then
        		self.widget.children[1].bg = dim_tag
        		--self.indicator_animation:set(dpi(8))
        	else
        		self.widget.children[1].bg = active_tag
        		--self.indicator_animation:set(dpi(16))
        	end
        
        	--- Tag preview
        	--self:connect_signal("mouse::enter", function()
        	--	if #c3:clients() > 0 then
        	--		awesome.emit_signal("bling::tag_preview::update", c3)
        	--		awesome.emit_signal("bling::tag_preview::visibility", s, true)
        	--	end
        	--end)
        
        	--self:connect_signal("mouse::leave", function()
        	--	awesome.emit_signal("bling::tag_preview::visibility", s, false)
        	--end)
        end,
        update_callback = function(self, c3, _)
        	if c3.selected then
        		self.widget.children[1].bg = accent
        		--self.indicator_animation:set(dpi(32))
        	elseif #c3:clients() == 0 then
        		self.widget.children[1].bg = dim_tag
        		--self.indicator_animation:set(dpi(8))
        	else
        		self.widget.children[1].bg = active_tag
        		--self.indicator_animation:set(dpi(16))
        	end
        end,
        },
	buttons = taglist_buttons,
    })

    --mytaglistcont = wibox.container.background(s.mytaglist, theme.bg_focus, gears.shape.rectangle)
    --s.mytag = wibox.container.margin(mytaglistcont, dpi(0), dpi(0), dpi(5), dpi(5))

    -- Create a tasklist widget
    s.mytasklist = awful.widget.tasklist(s, awful.widget.tasklist.filter.currenttags, awful.util.tasklist_buttons, { bg_focus = theme.bg_focus, shape = gears.shape.rectangle, shape_border_width = 5, shape_border_color = theme.tasklist_bg_normal, align = "center" })

    -- Create the wibox
    s.mywibox = awful.wibar({ position = "top", screen = s, height = dpi(32) })

    -- Add widgets to the wibox
    s.mywibox:setup {
        layout = wibox.layout.align.horizontal,
        { -- Left widgets
            layout = wibox.layout.fixed.horizontal,
	    {
	      {
		{
		  layout = wibox.layout.fixed.horizontal,
		  space,
    	          s.mytaglist,
		  space,
		},
	        bg     = '#303030',
                shape = function(cr, width, height)
                    gears.shape.rounded_rect(cr, width, height, 2)
                end,
	        widget = wibox.container.background,
              },
	      top = 5,
	      bottom = 5,
	      left = 5,
	      right = 1,
	      widget = wibox.container.margin,
	    },
            s.mypromptbox,
        },
        s.mytasklist, -- Middle widget
        { -- Right widgets
            layout = wibox.layout.fixed.horizontal,
            --wibox.widget.systray(),
	    {
	      {
		{
		  layout = wibox.layout.fixed.horizontal,
		  space,
                  netdown_icon,
		  net,
                  netup_icon,
		  separator,
                  gpu_icon,
                  gputemp,
                  temp_text,
		  separator,
                  cpu_icon,
                  cputemp,
	          temp_text,
		  separator,
                  calendar_icon,
                  mytextcalendar,
		  separator,
                  clock_icon,
                  clockwidget,
		  separator,
                  prev_icon,
                  next_icon,
                  stop_icon,
                  play_pause_icon,
		  space1,
		  separator,
                  mpd_icon,
		  separator,
                  volumewidget,
		  separator,
                  s.mylayoutbox,
		  space,
		},
	        bg     = '#303030',
                shape = function(cr, width, height)
                    gears.shape.rounded_rect(cr, width, height, 2)
                end,
	        widget = wibox.container.background,
              },
	      top = 5,
	      bottom = 5,
	      left = 1,
	      right = 5,
	      widget = wibox.container.margin,
	    },
            --spr_bottom_right,
            --netdown_icon,
            --networkwidget,
            --netup_icon,
            --bottom_bar,
            --gpu_icon,
            --gpuwidget,
	    --tempwidget,
            --bottom_bar,
            --cpu_icon,
            --cpuwidget,
	    --tempwidget,
            --bottom_bar,
            --calendar_icon,
            --calendarwidget,
            --bottom_bar,
            --clock_icon,
            --clockwidget,
            --prev_icon,
            --next_icon,
            --stop_icon,
            --play_pause_icon,
            --bar,
            --mpd_icon,
            --bar,
            --spr_very_small,
            --volumewidget,
            --spr_left,
        },
    }
end

return theme