-- config for LSP
-- https://github.com/neovim/nvim-lspconfig

return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"mason-lspconfig.nvim",
	},
	config = function()
		local options = require("plugins.lsp.options")
		require("lspconfig").lua_ls.setup {
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
						checkThirdParty = false,
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
	end
}
