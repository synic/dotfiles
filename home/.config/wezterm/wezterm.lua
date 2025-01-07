local wezterm = require("wezterm")
local mux = wezterm.mux
local config = {}

-- settings
config.window_close_confirmation = "NeverPrompt"
config.hide_tab_bar_if_only_one_tab = true
config.scrollback_lines = 100000

-- appearance
config.font = wezterm.font("Hack Nerd Font")
config.window_padding = {
	left = 1,
	right = 1,
	top = 1,
	bottom = 1,
}

config.color_scheme = "Tokyo Night Moon"
-- config.color_scheme = "Gruvbox Material (Gogh)"
config.colors = {
	tab_bar = {
		active_tab = {
			bg_color = "#272727",
			fg_color = "#c0c0c0",
		},
	},
}

config.unix_domains = {
	{
		name = "unix",
	},
}

local function open_coding_layout(main)
	if main == nil then
		main = wezterm.gui:gui_windows()[1]
	end

	main:active_pane():send_text("nvim\n")
	main:set_inner_size(2580, 1298)
	main:set_position(0, 0)

	local _, _, r1 = mux.spawn_window({ width = 122, height = 45 })
	r1:gui_window():set_inner_size(860, 635)
	r1:gui_window():set_position(2580, 0)

	local _, _, r2 = mux.spawn_window({ width = 122, height = 45 })
	r2:gui_window():set_inner_size(860, 635)
	r2:gui_window():set_position(2580, 715)

	main:focus()
end

-- keys
config.keys = {
	{
		key = "h",
		mods = "SHIFT|CTRL|ALT",
		action = wezterm.action.SplitHorizontal,
	},
	{
		key = "v",
		mods = "SHIFT|CTRL|ALT",
		action = wezterm.action.SplitVertical,
	},
	{
		key = "w",
		mods = "CMD",
		action = wezterm.action.CloseCurrentTab({ confirm = false }),
	},
	{ key = "L", mods = "CTRL", action = wezterm.action.ShowDebugOverlay },
	{
		key = "R",
		mods = "CMD",
		action = wezterm.action_callback(open_coding_layout),
	},
	{
		key = "Enter",
		mods = "ALT",
		action = wezterm.action.DisableDefaultAssignment,
	},
}

wezterm.on("gui-startup", function(cmd)
	local _, _, window = mux.spawn_window(cmd or {})

	if wezterm.mux.get_active_workspace() == "code" then
		open_coding_layout(window:gui_window())
	end
end)

return config
