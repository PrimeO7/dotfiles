-- config for lua_ls
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#lua_ls

local status, lspconfig = pcall(require, "lspconfig")
if not status then
	vim.notify("plugin: lspconfig\n not found")
	return
end

local status, options = pcall(require, "user.lsp.options")
if not status then
	vim.notify("configfile: options\n not found")
	return
end

lspconfig.lua_ls.setup {
	settings = {
		Lua = {
			runtime = {
				-- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
				version = 'LuaJIT',
			},
			diagnostics = {
				-- Get the language server to recognize the `vim` global
				globals = { 'vim' },
			},
			workspace = {
				-- Make the server aware of Neovim runtime files
				library = vim.api.nvim_get_runtime_file("", true),
			},
			-- Do not send telemetry data containing a randomized but unique identifier
			telemetry = {
				enable = false,
			},
		},
	},
	on_attach = options.on_attach,
	flags = options.lsp_flags,
	capabilities = options.capabilities,
}
