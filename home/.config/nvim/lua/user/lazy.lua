-- Lazy.nvim is a medern plugin manager for Neovim
-- https://github.com/folke/lazy.nvim#-structuring-your-plugins

-- Autoinstall lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

--------------------- Install your plugins here --------------------------------

require("lazy").setup({

	-- An implementation of the Popup API from vim in Neovim
	"nvim-lua/popup.nvim",

	-- Useful lua functions used by lots of plugins
	"nvim-lua/plenary.nvim",

	-- Colorscheme catppuccin for nvim
	"catppuccin/nvim",

	-- 42 Header Plugin
	"42Paris/42header",

	-- Discord Rich Presence Plugin
	"andweeb/presence.nvim",

	-- Autocomplete Plugins
	"hrsh7th/nvim-cmp", -- Main plugin
	"hrsh7th/cmp-buffer", -- Buffer completions
	"hrsh7th/cmp-path", -- Path completions
	"hrsh7th/cmp-cmdline", -- Cmdline completions
	"hrsh7th/cmp-nvim-lua", -- Nvim luascript completions
	"hrsh7th/cmp-nvim-lsp", -- Nvim lsp completions
	"saadparwaiz1/cmp_luasnip", -- Snippet completions

	-- Snippets
	"L3MON4D3/LuaSnip", -- Main Snippet plugin
	--  "rafamadriz/friendly-snippets", -- Collection of Snippets

	-- Lsp
	"neovim/nvim-lspconfig", -- Main Lsp plugin
	"williamboman/mason.nvim", -- Lsp Installer plugin
	"williamboman/mason-lspconfig.nvim", -- Automatically install Lsp servers
})
