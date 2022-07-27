local wezterm = require("wezterm")
-- local catppuccin = require("colors/catppuccin").setup {}
return {
	-- default_cursor_style = "BlinkingBar",
	color_scheme = "tokyonight-storm",
	default_prog = {"C:/Program Files/Git/bin/bash"},
	initial_cols = 100,
	initial_rows = 30,

	font = wezterm.font("MonoLisa"),
	-- window_background_opacity = 0.8,
	font_size = 11,
	window_padding = {
		left = 0,
		right = 0,
		top = 0,
		bottom = 0,
	},
	keys = {
		{ key = "H", mods = "CTRL|SHIFT", action = wezterm.action({ AdjustPaneSize = { "Left", 5 } }) },
		{ key = "J", mods = "CTRL|SHIFT", action = wezterm.action({ AdjustPaneSize = { "Down", 5 } }) },
		{ key = "K", mods = "CTRL|SHIFT", action = wezterm.action({ AdjustPaneSize = { "Up", 5 } }) },
		{ key = "L", mods = "CTRL|SHIFT", action = wezterm.action({ AdjustPaneSize = { "Right", 5 } }) },
		{ key = "h", mods = "ALT", action = wezterm.action({ ActivatePaneDirection = "Left" }) },
		{ key = "l", mods = "ALT", action = wezterm.action({ ActivatePaneDirection = "Right" }) },
		{ key = "k", mods = "ALT", action = wezterm.action({ ActivatePaneDirection = "Up" }) },
		{ key = "j", mods = "ALT", action = wezterm.action({ ActivatePaneDirection = "Down" }) },
		{ key = "t", mods = "SHIFT|CTRL", action = wezterm.action({ SpawnTab = "CurrentPaneDomain" }) },
		{ key = "5", mods = "CTRL", action = wezterm.action({ SplitHorizontal = { domain = "CurrentPaneDomain" } }) },
		{ key = "Enter", mods = "CTRL|SHIFT", action = wezterm.action({ SplitVertical = { domain = "CurrentPaneDomain" } }) },
	},
	adjust_window_size_when_changing_font_size = false,
	hide_tab_bar_if_only_one_tab = true,
}
