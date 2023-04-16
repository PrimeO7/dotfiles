-- Easily install and manage LSP servers,
-- DAP servers, linters, formatters and Null-ls sources.
-- https://github.com/williamboman/mason.nvim
-- https://github.com/williamboman/mason-lspconfig.nvim
-- https://github.com/jay-babu/mason-null-ls.nvim

return {
	{
		"williamboman/mason.nvim", -- Main Installer plugin
		config = true,
	},
	{
		"williamboman/mason-lspconfig.nvim", -- Automatically install Lsp servers
		dependencies = {
			"williamboman/mason.nvim", -- Main Installer plugin
		},
		opts = {
			ensure_installed = {
				"lua_ls",
				"clangd",
			},
		},
		{
			"jay-babu/mason-null-ls.nvim", -- Automatically install Null-ls sources
			dependencies = {
				"williamboman/mason.nvim",
				"jose-elias-alvarez/null-ls.nvim",
			},
			opts = {
				automatic_installation = true,
			},
		},
	},
}
