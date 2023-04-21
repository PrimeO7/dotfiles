-- config for the Nvim LSP client
-- https://github.com/neovim/nvim-lspconfig

local M = {}
-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
M.on_attach = function(client, bufnr)
	-- Enable completion triggered by <c-x><c-o>
	vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

	local function normal_map(keys, func, desc)
		vim.keymap.set("n", keys, func, { buffer = bufnr, desc = desc })
	end
	-- See `:help vim.lsp.*` for documentation on any of the below functions
	normal_map("gD", vim.lsp.buf.declaration, "Go to Declaration")
	normal_map("gd", vim.lsp.buf.definition, "Go to Definition")
	normal_map("K", vim.lsp.buf.hover, "Show Documentation")
	normal_map("gi", vim.lsp.buf.implementation, "Go to implementation")
	normal_map("<C-k>", vim.lsp.buf.signature_help, "Signature Documentation")
	normal_map("<leader>wa", vim.lsp.buf.add_workspace_folder, "Workspace add folder")
	normal_map("<leader>wr", vim.lsp.buf.remove_workspace_folder, "Workspace remove folder")
	normal_map("<leader>wl", function()
		print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
	end, "Workspace list folders")
	normal_map("<leader>n", function()
		vim.lsp.buf.format({ async = true })
	end, "Autoformat file")
	normal_map("<leader>D", vim.lsp.buf.type_definition, "Go to Type_definition")
	normal_map("<leader>rn", vim.lsp.buf.rename, "Rename")
	normal_map("<leader>ca", vim.lsp.buf.code_action, "Code action")
	normal_map("gr", vim.lsp.buf.references, "List refrences")
end

M.lsp_flags = {
	-- This is the default in Nvim 0.7+
	debounce_text_changes = 150,
}

local status, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not status then
	vim.notify("plugin: cmp_nvim_lsp\n not found")
	return
end

M.capabilities = cmp_nvim_lsp.default_capabilities()

vim.diagnostic.config({
	virtual_text = false,
})

return M
