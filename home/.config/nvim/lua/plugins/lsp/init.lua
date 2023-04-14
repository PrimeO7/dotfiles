-- config for LSP
-- https://github.com/neovim/nvim-lspconfig

return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"mason-lspconfig.nvim",
	},
	config = function()
		local function normal_map(keys, func, desc)
			vim.keymap.set("n", keys, func, { desc = desc })
		end
		-- Global mappings.
		-- See `:help vim.diagnostic.*` for documentation on any of the below functions
		normal_map("<leader>d", vim.diagnostic.open_float, "Open Diagnostic")
		normal_map("[d", vim.diagnostic.goto_prev, "Previous Diagnostic")
		normal_map("]d", vim.diagnostic.goto_next, "Next Diagnostic")
		normal_map("<leader>q", vim.diagnostic.setloclist, "Diagnostic set loclist")

		local options = require("plugins.lsp.options")

		-- lua-language-server for lua
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
		-- clangd for C, C++ 
		require("lspconfig").clangd.setup {
			on_attach = options.on_attach,
			flags = options.lsp_flags,
			capabilities = options.capabilities,
		}
	end
}
