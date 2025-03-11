local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.color_scheme = "Tokyo Night"
config.font = wezterm.font({
	family = "Rec Mono Duotone",
})
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
