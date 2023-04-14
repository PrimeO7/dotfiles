return {
	"iamcco/markdown-preview.nvim",
	build = "cd app && yarn install",
	ft = "markdown",
	config = function()
		vim.keymap.set("n", "<leader>p", "<cmd>MarkdownPreviewToggle<cr>", { desc = "Toggle Preview" })
	end,
}
