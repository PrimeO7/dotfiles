return {
	-- An implementation of the Popup API from vim in Neovim
	"nvim-lua/popup.nvim",

	-- Useful lua functions used by lots of plugins
	"nvim-lua/plenary.nvim",

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
}
