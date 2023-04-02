-- Easily install and manage LSP servers,
-- DAP servers, linters, and formatters.
-- https://github.com/williamboman/mason.nvim
-- https://github.com/williamboman/mason-lspconfig.nvim

return {
	{
		"williamboman/mason.nvim", -- Lsp Installer plugin
		config = true
	},
	{
		"williamboman/mason-lspconfig.nvim", -- Automatically install Lsp servers
		dependencies = {
			"williamboman/mason.nvim", -- Lsp Installer plugin
		},
		opts = {
			ensure_installed = {
				"lua_ls",
			}
		}
	}
}
