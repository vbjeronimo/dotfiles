local g = vim.g
local map = vim.api.nvim_set_keymap

map('n', '<Space>', '', {})
g.mapleader = ' '

map('n', '<c-k>', '<c-w>k', {})
map('n', '<c-j>', '<c-w>j', {})
map('n', '<c-h>', '<c-w>h', {})
map('n', '<c-l>', '<c-w>l', {})
