-- Telescope - fuzzy finder
-- https://github.com/nvim-telescope/telescope.nvim

return {
	'nvim-telescope/telescope.nvim',
	version = '*',
	dependencies = {
		'nvim-lua/plenary.nvim',
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "make",
			config = function()
				require("telescope").load_extension("fzf")
			end,
		},
	},
	cmd = "Telescope",
	keys = {
		{ "<leader>ff", "<cmd>Telescope find_files<cr>",  desc = "Find Files" },
		{ "<leader>fg", "<cmd>Telescope live_grep<cr>",   desc = "Live Grep" },
		{ "<leader>fb", "<cmd>Telescope buffers<cr>",     desc = "List Buffers" },
		{ "<leader>fh", "<cmd>Telescope help_tags<cr>",   desc = "Find Help" },
		{ "<leader>k",  "<cmd>Telescope keymaps<cr>",     desc = "Find Keymaps" },
		{ "<leader>fr", "<cmd>Telescope oldfiles<cr>",    desc = "Find Old Files" },
		{ "<leader>fc", "<cmd>Telescope git_commits<cr>", desc = "List Git log" },
	},
	opts = {
		defaults = {
			sorting_config = "decending",
			selection_strategy = "reset",
			scroll_strategy = "cycle",
			layout_strategy = "horizontal",
			layout_config = { preview_width = 0.65 },
			prompt_prefix = "> ",
			selection_caret = "> ",
			entry_prefix = "  ",
			multi_icon = ">>",
			preview = { hide_on_startup = false }, -- maybe change to toggle
		},
		pickers = {
			find_files = {
				find_command = { "fd", "--type", "f", "--follow", "--hidden" },
			},
		},
	}
}
