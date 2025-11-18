--return {
--	{
--		"catppuccin/nvim",
--		name = "catppuccin",
--		priority = 1000,
--		opts = {
--			flavour = "auto",
--			background = {
--				light = "latte",
--				dark = "mocha",
--			},
--			transparency = true,
--			show_end_of_buffer = false,
--			term_colors = true,
--			dim_inactive = {
--				enabled = false,
--				shade = "dark",
--				percentage = 0.15,
--			},
--			styles = {
--				comments = { "italic" },
--				functions = { "bold" },
--				keywords = { "italic" },
--				strings = {},
--				variables = {},
--			},
--			integrations = {
--				cmp = true,
--				gitsigns = true,
--				native_lsp = {
--					enabled = true,
--					virtual_text = {
--						errors = { "italic" },
--						hints = { "italic" },
--						warnings = { "italic" },
--						information = { "italic" },
--					},
--					underlines = {
--						errors = { "underline" },
--						hints = { "underline" },
--						warnings = { "underline" },
--						information = { "underline" },
--					},
--				},
--				lsp_trouble = true,
--				mason = true,
--				nvimtree = true,
--				telescope = true,
--			},
--		},
--		config = function()
--			vim.cmd.colorscheme("catppuccin")
--		end
--	},
--}

return {
	{
		"rebelot/kanagawa.nvim",
		name = "kanagawa",
		priority = 1000,
		opts = {
			compile = false, -- enable compiling the colorscheme
			undercurl = true, -- enable undercurls
			commentStyle = { italic = true },
			functionStyle = {},
			keywordStyle = { italic = true },
			statementStyle = { bold = true },
			typeStyle = {},
			transparent = false, -- do not set background color
			dimInactive = false, -- dim inactive window `:h hl-NormalNC`
			terminalColors = true, -- define vim.g.terminal_color_{0,17}
			colors = { -- add/modify theme and palette colors
				palette = {},
				theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
			},
			theme = "dragon",
			background = { -- map the value of 'background' option to a theme
				dark = "dragon", -- try "dragon" !
				light = "lotus",
			},
		},

		config = function()
			vim.cmd.colorscheme("kanagawa")
		end,
	},
}
