return {
	{
		"stevearc/oil.nvim",
		cmd = "Oil",
		event = { "VimEnter */*,.*", "BufNew */*,.*" },

		keys = {
			{ "<leader>p", ":Oil<CR>", { desc = "Open Oil file explorer" } },
		},
		opts = {
			view_options = {
				show_hidden = true,
			},
			skip_confirm_for_simple_edits = true,
			watch_for_changes = true,
			keymaps = {
				["g?"] = { "actions.show_help", mode = "n" },
				["<CR>"] = "actions.select",
				["<C-p>"] = "actions.preview",
				["<C-r>"] = "actions.refresh",
				["-"] = { "actions.parent", mode = "n" },
				["_"] = { "actions.open_cwd", mode = "n" },
				["gs"] = { "actions.change_sort", mode = "n" },
				["gx"] = "actions.open_external",
				["g."] = { "actions.toggle_hidden", mode = "n" },
				["g\\"] = { "actions.toggle_trash", mode = "n" },
			},
			use_default_keymaps = false,
		},
	},
}
