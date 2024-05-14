local wezterm = require 'wezterm'
local mux = wezterm.mux
local config = wezterm.config_builder()

config.color_scheme = 'AdventureTime'
config.font = wezterm.font 'Ubuntu Mono'
config.font_size = 24
-- config.color_scheme = 'Galaxy'
-- config.color_scheme = 'Gruvbox dark, hard (base16)'
config.color_scheme = 'Tokyo Night'
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true

wezterm.on('gui-startup', function(cmd)
  local tab, pane, window = mux.spawn_window(cmd or {})
  window:gui_window():maximize()
end)

return config
