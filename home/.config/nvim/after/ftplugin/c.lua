vim.keymap.set("n", "<leader>n", function()
	vim.lsp.buf.format({
		async = true,
		filter = function(client)
			return client.name ~= "clangd"
		end,
	})
end, {desc = "Autoformat file"})
