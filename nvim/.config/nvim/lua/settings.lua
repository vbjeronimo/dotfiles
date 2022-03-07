local opt = vim.opt	-- to set options
local g = vim.g		-- to set global options

-- disable unused providers
g.loaded_ruby_provider = 0
g.loaded_perl_provider = 0

-- global options
opt.hidden = true

opt.splitright = true
opt.splitbelow = true

opt.incsearch = true
opt.hlsearch = false

opt.termguicolors = true

opt.equalalways = false     -- windows won't automatically resize after opening/closing a window

-- window-local options
opt.wrap = false
opt.number = true
opt.relativenumber = true
opt.cursorline = true

-- buffer-local options
opt.expandtab = true
opt.autoindent = true
opt.smarttab = true
opt.tabstop = 4
opt.shiftwidth = 4

vim.cmd [[
  syntax enable
  colorscheme spaceduck
]]


-- Highlight on yank
vim.cmd [[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank()
  augroup end
]]
