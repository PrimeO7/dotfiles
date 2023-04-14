-- Treesitter is like a translator that can help programs
-- understand what you mean when you write code.
-- It can analyze the code you've written and
-- break it down into different parts, like functions, variables,
-- and loops, so that programs can work with it more easily.
-- https://github.com/tree-sitter/tree-sitter
-- https://github.com/nvim-treesitter/nvim-treesitter
-- https://github.com/nvim-treesitter/nvim-treesitter-context

return {
	'nvim-treesitter/nvim-treesitter',
	build = ":TSUpdate",
	dependencies = {
		"nvim-treesitter/nvim-treesitter-context"
	},
	opts = {
		ensure_installed = {
			"c",
			"comment",
			"cpp",
			"diff",
			"git_rebase",
			"gitcommit",
			"lua",
			"make",
			"markdown",
			"markdown_inline",
			"query",
			"vim",
			"vimdoc",
		},
		sync_install = false,
		auto_install = true,
		highlight = {
			enable = true,
			additional_vim_regex_highlighting = false,
		},
	},
	-- executes when the plugin loads
	config = function(_, opts)
		require("nvim-treesitter.configs").setup(opts)
	end,
}
