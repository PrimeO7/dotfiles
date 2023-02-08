-- options
-- :h [option]
-- https://neovim.io/doc/user/options.html

local options = {
  clipboard = "unnamedplus",     -- allows neovim to access the system clipboard
  hlsearch = true,               -- highlight all matches on previous search pattern
  mouse = "a",                   -- allow the mouse to be used in neovim
  pumheight = 10,                -- pop up menu height
  showtabline = 2,               -- always show tabs
  smartcase = true,              -- smart case
  smartindent = true,            -- make indenting smarter again
  splitbelow = true,             -- force all horizontal splits to go below current window
  splitright = true,             -- force all vertical splits to go to the right of current window
  termguicolors = true,          -- set term gui colors (most terminals support this)
  undofile = true,               -- enable persistent undo
  expandtab = false,             -- convert tabs to spaces
  shiftwidth = 4,                -- the number of spaces inserted for each indentation
  tabstop = 4,                   -- insert 4 spaces for a tab
  cursorline = true,             -- highlight the current line
  number = true,                 -- set numbered lines
  colorcolumn = "80",            -- set colorcolumn to 80			
  relativenumber = true,         -- set relative numbered lines
  numberwidth = 4,               -- set number column width to 4 {default 4}
  signcolumn = "auto",           -- always show the sign column, otherwise it would shift the text each time
  wrap = false,                  -- display lines as one long line
  scrolloff = 8,                 -- is one of my fav
  sidescrolloff = 8,             -- sidescrolloff
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

--TODO	SET FORMATOPTIONS
