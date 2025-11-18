return {
	{
		"mrjones2014/smart-splits.nvim",
		lazy = false,
		config = function()
			local smart_splits = require("smart-splits")
			local map = vim.keymap.set

			map("n", "<A-h>", smart_splits.resize_left)
			map("n", "<A-j>", smart_splits.resize_down)
			map("n", "<A-k>", smart_splits.resize_up)
			map("n", "<A-l>", smart_splits.resize_right)
			map("n", "<C-h>", smart_splits.move_cursor_left)
			map("n", "<C-j>", smart_splits.move_cursor_down)
			map("n", "<C-k>", smart_splits.move_cursor_up)
			map("n", "<C-l>", smart_splits.move_cursor_right)
			map("n", "<C-\\>", smart_splits.move_cursor_previous)
			map("n", "<leader><leader>h", smart_splits.swap_buf_left)
			map("n", "<leader><leader>j", smart_splits.swap_buf_down)
			map("n", "<leader><leader>k", smart_splits.swap_buf_up)
			map("n", "<leader><leader>l", smart_splits.swap_buf_right)
		end,
	},
}
