local opt = vim.opt -- to set options
local g = vim.g -- to set global options

-- disable unused providers --
g.loaded_ruby_provider = 0
g.loaded_perl_provider = 0

-- enable filetype.nvim --
g.did_load_filetypes = 1

-- global options --
opt.hidden = true
opt.showmode = false
opt.clipboard = 'unnamedplus'

opt.splitright = true
opt.splitbelow = true

opt.fillchars = { eob = ' ' }

opt.incsearch = true
opt.hlsearch = false
opt.ignorecase = true
opt.smartcase = true

opt.termguicolors = true
opt.cmdheight = 1

-- window-local options --
opt.wrap = false
opt.number = true
opt.relativenumber = true
opt.cursorline = true

-- buffer-local options --
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true
opt.smarttab = true
opt.tabstop = 4
opt.shiftwidth = 4

vim.cmd [[
  syntax enable
  let g:material_style = 'deep ocean'
  colorscheme material
]]
