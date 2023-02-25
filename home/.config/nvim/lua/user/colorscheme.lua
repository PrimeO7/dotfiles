-- Colorscheme
-- https://github.com/catppuccin/nvim

local status, catppuccin = pcall(require, "catppuccin")
if not status then
	vim.notify("colorscheme catppuccin not found")
	return
end

catppuccin.setup {
	flavour = "mocha" -- mocha, macchiato, frappe, latte
}
vim.cmd.colorscheme("catppuccin")
