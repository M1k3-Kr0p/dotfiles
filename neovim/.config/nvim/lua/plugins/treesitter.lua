return {
	{
		"nvim-treesitter/nvim-treesitter",
		lazy = false,
		build = ":TSUpdate",
		config = function()
			require("nvim-treesitter").install({
				"bash",
				"c",
				"diff",
				"html",
				"lua",
				"luadoc",
				"markdown",
				"vim",
				"vimdoc",
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
