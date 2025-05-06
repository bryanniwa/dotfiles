local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.color_scheme = "Catppuccin Mocha"
config.font = wezterm.font({
	-- family = "Rec Mono Duotone",
	family = "Maple Mono NF",
	harfbuzz_features = { "cv02=1", "cv35=1" },
})
config.warn_about_missing_glyphs = false
config.enable_wayland = false
config.font_size = 12
config.switch_to_last_active_tab_when_closing_tab = true

config.keys = {
	{
		key = "w",
		mods = "CTRL|SHIFT",
		action = wezterm.action.CloseCurrentPane({ confirm = true }),
	},
}

return config
