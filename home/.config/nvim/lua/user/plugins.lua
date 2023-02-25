local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

--------------------- Install your plugins here --------------------------------
return packer.startup(function(use)
  -- Have packer manage itself
  use "wbthomason/packer.nvim"

  -- An implementation of the Popup API from vim in Neovim
  use "nvim-lua/popup.nvim"

  -- Useful lua functions used by lots of plugins
  use "nvim-lua/plenary.nvim"

  -- Colorscheme catppuccin for nvim
  use "catppuccin/nvim"

  -- 42 Header Plugin
  use "42Paris/42header"

  -- Discord Rich Presence Plugin
  use "andweeb/presence.nvim"

  -- Autocomplete Plugins
  use "hrsh7th/nvim-cmp" -- Main plugin
  use "hrsh7th/cmp-buffer" -- Buffer completions
  use "hrsh7th/cmp-path" -- Path completions
  use "hrsh7th/cmp-cmdline" -- Cmdline completions
  use "hrsh7th/cmp-nvim-lua" -- Nvim luascript completions
  use "hrsh7th/cmp-nvim-lsp" -- Nvim lsp completions
  use "saadparwaiz1/cmp_luasnip" -- Snippet completions

  -- Snippets
  use "L3MON4D3/LuaSnip" -- Main Snippet plugin
--  use "rafamadriz/friendly-snippets" -- Collection of Snippets

  -- Lsp
  use "neovim/nvim-lspconfig" -- Main Lsp plugin
  use "williamboman/mason.nvim" -- Lsp Installer plugin
  use "williamboman/mason-lspconfig.nvim" -- Automatically install Lsp servers

------------------------End of plugins------------------------------------------

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
