return {
	["rose-pine-moon"] = {
		apply_to_config = function(config)
			config.color_scheme = "rose-pine"
			config.colors = {
				selection_bg = "#403D52",
				tab_bar = {
					background = "#2A273F",
					inactive_tab = {
						fg_color = "#e0def4",
						bg_color = "#2A273F",
					},
					active_tab = {
						bg_color = "#EBBCBA",
						fg_color = "#191D24",
					},
				},
			}
		end,
	},
	["tokyonight-moon"] = {
		apply_to_config = function(config)
			config.color_scheme = "Tokyo Night Moon"
			config.colors = {
				tab_bar = {
					active_tab = {
						bg_color = "#272727",
						fg_color = "#c0c0c0",
					},
				},
			}
		end,
	},
	catppuccin = {
		apply_to_config = function(config)
			config.color_scheme = "Catppuccin Macchiato"
		end,
	},
	nord = {
		apply_to_config = function(config)
			config.color_scheme = "nord"
			config.colors = {
				background = "#242933",
				tab_bar = {
					background = "#2E3440",
					active_tab = {
						bg_color = "#A3BE8C",
						fg_color = "#191D24",
					},
				},
			}
		end,
	},
}
