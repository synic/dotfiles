local wezterm = require("wezterm")
local config = {}

-- settings
config.window_close_confirmation = "NeverPrompt"
config.hide_tab_bar_if_only_one_tab = true

-- appearance
config.font = wezterm.font("Hack Nerd Font")
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
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
}

return config
