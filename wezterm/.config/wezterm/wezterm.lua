local w = require("wezterm")

local smart_splits = w.plugin.require("https://github.com/mrjones2014/smart-splits.nvim")
local config = w.config_builder()

local function get_os()
	local sep = package.config:sub(1, 1)

	if sep == "\\" then
		return "Windows"
	end

	local handle = io.popen("uname")
	local result = handle:read("*a")

	handle:close()
	result = result:lower()

	if result:find("linux") then
		return "Linux"
	end
	return "macOS"
end

local os_name = get_os()

config.color_scheme = "Batman"
config.font = w.font("JetBrains Mono")
config.window_padding = {
	left = 3,
	right = 3,
	top = 0,
	bottom = 0,
}

config.window_frame = {
	inactive_titlebar_bg = "#1B1B1B",
	active_titlebar_bg = "#111111",
	inactive_titlebar_fg = "#6F6F6F",
	active_titlebar_fg = "#DCDCDC",
	inactive_titlebar_border_bottom = "#2A2A2A",
	active_titlebar_border_bottom = "#3A3A3A",
	button_fg = "#6F6F6F",
	button_bg = "#111111",
	button_hover_fg = "#FFFFFF",
	button_hover_bg = "#2A2A2A",
}

config.window_close_confirmation = "NeverPrompt"
config.hide_tab_bar_if_only_one_tab = false
config.font_size = 12.5
config.use_fancy_tab_bar = true
config.tab_bar_at_bottom = false
config.show_new_tab_button_in_tab_bar = true
config.inactive_pane_hsb = {
	saturation = 0.5,
	brightness = 0.8,
}

config.underline_thickness = "2.5px"
config.window_decorations = "RESIZE"

config.cursor_blink_rate = 800
config.default_cursor_style = "SteadyBlock"
config.max_fps = 120

-- Windows overwrites
if os_name == "Windows" then
	config.default_domain = "WSL:Ubuntu"
end

-- Keymaps
config.leader = { key = "a", mods = "CTRL", timeout_milliseconds = 1000 }
config.keys = {
	{
		key = "a",
		mods = "LEADER|CTRL",
		action = w.action.SendKey({ key = "a", mods = "CTRL" }),
	},
	{
		mods = "LEADER",
		key = "-",
		action = w.action.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
	{
		mods = "LEADER",
		key = "\\",
		action = w.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	{
		mods = "LEADER",
		key = "m",
		action = w.action.TogglePaneZoomState,
	},
	{
		mods = "LEADER",
		key = "Space",
		action = w.action.RotatePanes("Clockwise"),
	},
	{
		key = "Enter",
		mods = "LEADER",
		action = w.action.ActivateCopyMode,
	},
}

smart_splits.apply_to_config(config)

return config
