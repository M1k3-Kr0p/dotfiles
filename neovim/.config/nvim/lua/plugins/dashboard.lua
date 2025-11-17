return {
	{
		"goolord/alpha-nvim",
		dependencies = {
			"nvim-mini/mini.icons",
			"nvim-lua/plenary.nvim",
		},
		config = function()
			local alpha = require("alpha")
			local dashboard = require("alpha.themes.dashboard")

			-- Set header
			dashboard.section.header.val = {
				"                                                     ",
				"  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
				"  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
				"  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
				"  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
				"  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
				"  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
				"                                                     ",
			}

			-- Set menu
			dashboard.section.buttons.val = {
				dashboard.button("e", "  > New file", ":ene <BAR> startinsert <CR>"),
				dashboard.button("f", "󰭎  > Find file", ":Telescope find_files<CR>"),
				dashboard.button("p", " > Find project", ":Telescope project<CR>"),
				dashboard.button("r", "  > Recent", ":Telescope oldfiles<CR>"),
				dashboard.button("d", "  > Dotfiles", ":cd ~/dotfiles |:Oil .<CR>"),
				dashboard.button("n", "  > Neovim config", ":cd ~/.config/nvim | :Oil .<CR>"),
				dashboard.button("u", "󰒲  > Update plugins", ":Lazy update<CR>"),
				dashboard.button("q", "⨯  > Quit Neovim", ":qa<CR>"),
			}
			dashboard.section.footer.val = function()
				local stats = require("lazy").stats()
				local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
				return { "⚡ Neovim loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms" }
			end
			alpha.setup(dashboard.opts)

			vim.keymap.set("n", "<leader>a", "<cmd>Alpha<CR>", { desc = "Open [A]lpha" })
			vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
		end,
	},
}
