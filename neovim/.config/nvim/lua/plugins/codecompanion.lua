return {
	"olimorris/codecompanion.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-treesitter/nvim-treesitter",
	},
	opts = {
		opts = {
			log_level = "DEBUG", -- or "TRACE"
		},
		interactions = {
			chat = {
				adapter = "copilot",
				model = "gpt-4o",
			},
			inline = {
				adapter = "copilot",
			},
		},
	},
	--config = function()
	--	vim.keymap.set("n", "<leader>cc", ":CodeCompanionChat<CR>", { noremap = true, silent = true })
	--end,
}
