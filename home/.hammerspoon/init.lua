-----------------------------------------------
-- Set up
-----------------------------------------------

local hyper = {"cmd", "alt", "ctrl"}
local dock_margin = 25
local increase_step = 10
local decrease_step = 10

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
-- hyper [ for left 1/3 of the screen
-----------------------------------------------

hs.hotkey.bind(hyper, "[", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x
    f.y = max.y
    f.w = max.w / 3
    f.h = max.h - dock_margin
    win:setFrame(f)
end)

-----------------------------------------------
-- hyper p for right 2/3 of the screen
-----------------------------------------------

hs.hotkey.bind(hyper, "p", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x + (max.w / 3)
    f.y = max.y
    f.w = (max.w / 3) * 2
    f.h = max.h - dock_margin
    win:setFrame(f)
end)

-----------------------------------------------
-- hyper o for left 2/3 of the screen
-----------------------------------------------

hs.hotkey.bind(hyper, "o", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x
    f.y = max.y
    f.w = (max.w / 3) * 2
    f.h = max.h - dock_margin
    win:setFrame(f)
end)

-----------------------------------------------
-- hyper ] for right 1/3 of the screen
-----------------------------------------------

hs.hotkey.bind(hyper, "]", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x + (max.w / 3) * 2
    f.y = max.y
    f.w = (max.w / 3)
    f.h = max.h - dock_margin
    win:setFrame(f)
end)

-----------------------------------------------
-- hyper 9 for left top 1/3 of the screen
-----------------------------------------------

hs.hotkey.bind(hyper, "9", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x
    f.y = max.y
    f.w = (max.w / 3)
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
    f.w = (max.w / 3)
    f.h = (max.h - dock_margin) / 2
    win:setFrame(f)
end)

-----------------------------------------------
-- hyper 0 for right top 1/3 of the screen
-----------------------------------------------

hs.hotkey.bind(hyper, "0", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x + (max.w / 3) * 2
    f.y = max.y
    f.w = (max.w / 3)
    f.h = (max.h - dock_margin) / 2
    win:setFrame(f)
end)

-----------------------------------------------
-- hyper m for right bottom 1/3 of the screen
-----------------------------------------------

hs.hotkey.bind(hyper, "m", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x + (max.w / 3) * 2
    f.y = max.y + (max.h - dock_margin) / 2
    f.w = (max.w / 3)
    f.h = (max.h - dock_margin) / 2
    win:setFrame(f)
end)

-----------------------------------------------
-- Reload config on write
-----------------------------------------------

function reload_config(files)
    hs.reload()
end
hs.pathwatcher.new(os.getenv("HOME") .. "/.hammerspoon/", reload_config):start()
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

hs.hotkey.bind(hyper, 'k', function()
    hs.window.focusedWindow():focusWindowNorth()
end)

hs.hotkey.bind(hyper, 'j', function()
    hs.window.focusedWindow():focusWindowSouth()
end)

hs.hotkey.bind(hyper, 'l', function()
    hs.window.focusedWindow():focusWindowEast()
end)

hs.hotkey.bind(hyper, 'h', function()
    hs.window.focusedWindow():focusWindowWest()
end)

-----------------------------------------------
-- Start certain programs with a key combo
-----------------------------------------------
hs.hotkey.bind({"cmd", "control"}, 'l', function()
    hs.execute("/System/Library/CoreServices/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine")
end)

hs.hotkey.bind({"cmd", "control"}, 't', function()
    hs.application.launchOrFocus("iTerm")
end)

hs.hotkey.bind({"cmd", "control"}, 's', function()
    hs.caffeinate.systemSleep()
end)

hs.hotkey.bind({"alt", "shift"}, '4', function()
    hs.execute("/Users/adam.olsen/bin/osx_screenshot")
end)
