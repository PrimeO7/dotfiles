-- Easily install and manage LSP servers,
-- DAP servers, linters, and formatters.
-- https://github.com/williamboman/mason.nvim

local status, mason = pcall(require, "mason")
if not status then
	vim.notify("plugin: mason\n not found")
	return
end

mason.setup()

-- Configuration for mason-lspconfig
-- https://github.com/williamboman/mason-lspconfig.nvim

local status, mason_lspconfig = pcall(require, "mason-lspconfig")
if not status then
	vim.notify("plugin: mason-lspconfig\n not found")
	return
end

mason_lspconfig.setup {
	ensure_installed = {
		"lua_ls",
	}
}
