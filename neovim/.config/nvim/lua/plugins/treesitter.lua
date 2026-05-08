return {
	{
		"nvim-treesitter/nvim-treesitter",
		branch = "main",
		lazy = false,
		build = ":TSUpdate",
		config = function()
			require("nvim-treesitter").install({
				"bash",
				"c",
				"diff",
				"hcl",
				"html",
				"json",
				"lua",
				"luadoc",
				"markdown",
				"terraform",
				"vim",
				"vimdoc",
				"yaml",
			})

			vim.api.nvim_create_autocmd("FileType", {
				callback = function(ev)
					if ev.match ~= "ruby" then
						pcall(vim.treesitter.start)
					end
				end,
			})
		end,
	},
}
