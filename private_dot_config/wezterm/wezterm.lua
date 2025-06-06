local wezterm = require("wezterm")

local config = wezterm.config_builder()

-- config.color_scheme = "Catppuccin Mocha"
config.color_scheme = "rose-pine"
config.font = wezterm.font({
	-- family = "Rec Mono Duotone",
	family = "Maple Mono NF",
	harfbuzz_features = { "cv02=1", "cv35=1", "cv64" },
})
config.warn_about_missing_glyphs = false
-- config.enable_wayland = true
-- config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
config.hide_tab_bar_if_only_one_tab = true
config.font_size = 11
config.switch_to_last_active_tab_when_closing_tab = true

config.window_background_opacity = 0.8
config.kde_window_background_blur = true

config.keys = {
	{
		key = "w",
		mods = "CTRL|SHIFT",
		action = wezterm.action.CloseCurrentPane({ confirm = true }),
	},
	{
		key = "o",
		mods = "CTRL|SHIFT",
		action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
	},
	{
		key = "e",
		mods = "CTRL|SHIFT",
		action = wezterm.action.SplitVertical{ domain = 'CurrentPaneDomain' },
	},
}

config.colors = {
	ansi = {
		"#1e1e2e", -- black
		"#f38ba8", -- red
		"#a6e3a1", -- green
		"#f9e2af", -- yellow
		"#89b4fa", -- blue
		"#f5c2e7", -- magenta
		"#94e2d5", -- cyan
		"#cdd6f4", -- white
	},
}

return config
