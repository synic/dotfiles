local wezterm = require("wezterm")
local theme = require("theme")
local mux = wezterm.mux
local config = {}

-- settings
config.window_close_confirmation = "NeverPrompt"
config.hide_tab_bar_if_only_one_tab = true
config.scrollback_lines = 100000
config.show_close_tab_button_in_tabs = false
config.use_fancy_tab_bar = false
config.show_new_tab_button_in_tab_bar = false

theme["catppuccin"].apply_to_config(config)
config.font = wezterm.font("PragmataPro Mono Liga Freeze", { weight = "Regular" })
config.cell_width = 0.9
config.font_size = 14

config.window_padding = {
	left = 5,
	right = 5,
	top = 2,
	bottom = 2,
}
config.window_decorations = "RESIZE"

config.unix_domains = { { name = "unix" } }

local function open_coding_layout(main)
	if main == nil then
		main = wezterm.gui:gui_windows()[1]
	end

	-- main:active_pane():send_text("nvim\n")
	main:set_inner_size(2580, 1328)
	main:set_position(0, 0)

	local _, _, r1 = mux.spawn_window({ width = 122, height = 55 })
	r1:gui_window():set_inner_size(860, 665)
	r1:gui_window():set_position(2580, 0)

	local _, _, r2 = mux.spawn_window({ width = 122, height = 55 })
	r2:gui_window():set_inner_size(850, 665)
	r2:gui_window():set_position(2580, 690)

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
	{
		key = "Enter",
		mods = "SHIFT",
		action = wezterm.action.SendString("\n"),
	},
}

wezterm.on("gui-startup", function(cmd)
	local _, _, window = mux.spawn_window(cmd or {})

	if wezterm.mux.get_active_workspace() == "code" then
		open_coding_layout(window:gui_window())
	end
end)

wezterm.on("format-window-title", function(tab, _, tabs, _, _)
	local zoomed = ""
	if tab.active_pane.is_zoomed then
		zoomed = "[Z] "
	end

	local index = ""
	if #tabs > 1 then
		index = string.format("[%d/%d] ", tab.tab_index + 1, #tabs)
	end

	local title = zoomed .. index .. tab.active_pane.title
	print(title)
	return title
end)

return config
