-- Colorscheme
-- https://github.com/catppuccin/nvim

return {
	"catppuccin/nvim",
	lazy = false,
	priority = 1000,
	config = function ()
		require("catppuccin").setup({
	 		flavour = "mocha" -- mocha, macchiato, frappe, latte
		})
		vim.cmd.colorscheme("catppuccin")
	end
}
