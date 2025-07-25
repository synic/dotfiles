local hyper = { "cmd", "alt", "ctrl" }
local dock_margin = 25
local wezterm_bin = "/opt/homebrew/bin/wezterm"

-----------------------------------------------
-- hyper d for left one half window
-----------------------------------------------

hs.hotkey.bind(hyper, "d", function()
	local win = hs.window.focusedWindow()
	local f = win:frame()
	local screen = win:screen()
	local max = screen:frame()

	f.x = max.x
	f.y = max.y
	f.w = max.w / 2
	f.h = max.h - dock_margin
	win:setFrame(f)
end)

-----------------------------------------------
-- hyper g for right one half window
-----------------------------------------------

hs.hotkey.bind(hyper, "g", function()
	local win = hs.window.focusedWindow()
	local f = win:frame()
	local screen = win:screen()
	local max = screen:frame()

	f.x = max.x + (max.w / 2)
	f.y = max.y
	f.w = max.w / 2
	f.h = max.h - dock_margin
	win:setFrame(f)
end)

-----------------------------------------------
-- hyper w for top half of screen
-----------------------------------------------

hs.hotkey.bind(hyper, "w", function()
	local win = hs.window.focusedWindow()
	local f = win:frame()
	local screen = win:screen()
	local max = screen:frame()

	f.x = max.x
	f.y = max.y
	f.w = max.w
	f.h = (max.h / 2)
	win:setFrame(f)
end)

-----------------------------------------------
-- hyper x for bottom half of screen
-----------------------------------------------

hs.hotkey.bind(hyper, "x", function()
	local win = hs.window.focusedWindow()
	local f = win:frame()
	local screen = win:screen()
	local max = screen:frame()

	f.x = max.x
	f.y = max.y + (max.h / 2)
	f.w = max.w
	f.h = (max.h / 2) - dock_margin
	win:setFrame(f)
end)

-----------------------------------------------
-- hyper f for fullscreen
-----------------------------------------------

hs.hotkey.bind(hyper, "f", function()
	local win = hs.window.focusedWindow()
	local f = win:frame()
	local screen = win:screen()
	local max = screen:frame()

	f.x = max.x
	f.y = max.y
	f.w = max.w
	f.h = max.h - dock_margin
	win:setFrame(f)
end)

-----------------------------------------------
-- hyper r for top left one quarter window
-----------------------------------------------

hs.hotkey.bind(hyper, "r", function()
	local win = hs.window.focusedWindow()
	local f = win:frame()
	local screen = win:screen()
	local max = screen:frame()

	f.x = max.x
	f.y = max.y
	f.w = max.w / 2
	f.h = (max.h / 2) - dock_margin
	win:setFrame(f)
end)

-----------------------------------------------
-- hyper t for top right one quarter window
-----------------------------------------------

hs.hotkey.bind(hyper, "t", function()
	local win = hs.window.focusedWindow()
	local f = win:frame()
	local screen = win:screen()
	local max = screen:frame()

	f.x = max.x + (max.w / 2)
	f.y = max.y
	f.w = max.w / 2
	f.h = (max.h / 2) - dock_margin
	win:setFrame(f)
end)

-----------------------------------------------
-- hyper v for bottom left one quarter window
-----------------------------------------------

hs.hotkey.bind(hyper, "v", function()
	local win = hs.window.focusedWindow()
	local f = win:frame()
	local screen = win:screen()
	local max = screen:frame()

	f.x = max.x + (max.w / 2)
	f.y = max.y + (max.h / 2)
	f.w = max.w / 2
	f.h = (max.h / 2) - dock_margin
	win:setFrame(f)
end)

-----------------------------------------------
-- hyper c for bottom right one quarter window
-----------------------------------------------

hs.hotkey.bind(hyper, "c", function()
	local win = hs.window.focusedWindow()
	local f = win:frame()
	local screen = win:screen()
	local max = screen:frame()

	f.x = max.x
	f.y = max.y + (max.h / 2)
	f.w = max.w / 2
	f.h = (max.h / 2) - dock_margin
	win:setFrame(f)
end)

-----------------------------------------------
-- hyper [ for left 1/4 of the screen
-----------------------------------------------

hs.hotkey.bind(hyper, "[", function()
	local win = hs.window.focusedWindow()
	local f = win:frame()
	local screen = win:screen()
	local max = screen:frame()

	f.x = max.x
	f.y = max.y
	f.w = max.w / 4
	f.h = max.h - dock_margin
	win:setFrame(f)
end)

-----------------------------------------------
-- hyper p for right 3/4 of the screen
-----------------------------------------------

hs.hotkey.bind(hyper, "p", function()
	local win = hs.window.focusedWindow()
	local f = win:frame()
	local screen = win:screen()
	local max = screen:frame()

	f.x = max.x + (max.w / 4)
	f.y = max.y
	f.w = (max.w / 4) * 3
	f.h = max.h - dock_margin
	win:setFrame(f)
end)

-----------------------------------------------
-- hyper o for left 3/4 of the screen
-----------------------------------------------

hs.hotkey.bind(hyper, "o", function()
	local win = hs.window.focusedWindow()
	local f = win:frame()
	local screen = win:screen()
	local max = screen:frame()

	f.x = max.x
	f.y = max.y
	f.w = (max.w / 4) * 3
	f.h = max.h - dock_margin
	win:setFrame(f)
end)

-----------------------------------------------
-- hyper ] for right 1/4 of the screen
-----------------------------------------------

hs.hotkey.bind(hyper, "]", function()
	local win = hs.window.focusedWindow()
	local f = win:frame()
	local screen = win:screen()
	local max = screen:frame()

	f.x = max.x + (max.w / 4) * 3
	f.y = max.y
	f.w = (max.w / 4)
	f.h = max.h - dock_margin
	win:setFrame(f)
end)

-----------------------------------------------
-- hyper 9 for left top 1/4 of the screen
-----------------------------------------------

hs.hotkey.bind(hyper, "9", function()
	local win = hs.window.focusedWindow()
	local f = win:frame()
	local screen = win:screen()
	local max = screen:frame()

	f.x = max.x
	f.y = max.y
	f.w = (max.w / 4)
	f.h = (max.h - dock_margin) / 2
	win:setFrame(f)
end)

-----------------------------------------------
-- hyper n for left bottom 1/3 of the screen
-----------------------------------------------

hs.hotkey.bind(hyper, "n", function()
	local win = hs.window.focusedWindow()
	local f = win:frame()
	local screen = win:screen()
	local max = screen:frame()

	f.x = max.x
	f.y = max.y + (max.h - dock_margin) / 2
	f.w = (max.w / 4)
	f.h = (max.h - dock_margin) / 2
	win:setFrame(f)
end)

-----------------------------------------------
-- hyper 0 for right top 1/4 of the screen
-----------------------------------------------

hs.hotkey.bind(hyper, "0", function()
	local win = hs.window.focusedWindow()
	local f = win:frame()
	local screen = win:screen()
	local max = screen:frame()

	f.x = max.x + (max.w / 4) * 3
	f.y = max.y
	f.w = (max.w / 4)
	f.h = (max.h - dock_margin) / 2
	win:setFrame(f)
end)

-----------------------------------------------
-- hyper m for right bottom 1/4 of the screen
-----------------------------------------------

hs.hotkey.bind(hyper, "m", function()
	local win = hs.window.focusedWindow()
	local f = win:frame()
	local screen = win:screen()
	local max = screen:frame()

	f.x = max.x + (max.w / 4) * 3
	f.y = max.y + (max.h - dock_margin) / 2
	f.w = (max.w / 4)
	f.h = (max.h - dock_margin) / 2
	win:setFrame(f)
end)

-----------------------------------------------
-- Reload config on write
-----------------------------------------------

hs.hotkey.bind(hyper, "R", function()
	hs.reload()
	hs.alert("Config loaded")
end)

hs.pathwatcher.new(os.getenv("HOME") .. "/.dotfiles/home/.hammerspoon/", hs.reload):start()
hs.alert.show("Config loaded")

-----------------------------------------------
-- Hyper . to show window hints
-----------------------------------------------

hs.hotkey.bind(hyper, ".", function()
	hs.hints.windowHints()
end)

-----------------------------------------------
-- Hyper hjkl to switch window focus
-----------------------------------------------

hs.hotkey.bind(hyper, "k", function()
	hs.window.focusedWindow():focusWindowNorth()
end)

hs.hotkey.bind(hyper, "j", function()
	hs.window.focusedWindow():focusWindowSouth()
end)

hs.hotkey.bind(hyper, "l", function()
	hs.window.focusedWindow():focusWindowEast()
end)

hs.hotkey.bind(hyper, "h", function()
	hs.window.focusedWindow():focusWindowWest()
end)

----------------------------------------------
-- Launch wezterm coding layout
----------------------------------------------
hs.hotkey.bind(hyper, "i", function()
	hs.execute(wezterm_bin .. " start --workspace=code &> /dev/null & disown")
end)

----------------------------------------------
-- New terminal window
----------------------------------------------
hs.hotkey.bind(hyper, "y", function()
	hs.execute(wezterm_bin .. " cli spawn --new-window --workspace=code &> /dev/null & disown")
end)
