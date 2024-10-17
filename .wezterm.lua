-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

config.enable_wayland = true
config.front_end = 'OpenGL'

-- This is where you actually apply your config choices
config.color_scheme = "Gruvbox dark, soft (base16)"
config.font = wezterm.font("FiraCode Nerd Font")

config.hide_tab_bar_if_only_one_tab = true

config.keys = {
  {
    key = "d",
    mods = "CTRL|SHIFT",
    action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
  },
  {
    key = "a",
    mods = "CTRL|SHIFT",
    action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
  },
}



-- and finally, return the configuration to wezterm
return config
