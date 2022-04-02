local g = vim.g
local map = vim.api.nvim_set_keymap

map('n', '<Space>', '', {})

map('n', '<Left>',  '<c-w>h', {})
map('n', '<Down>',  '<c-w>j', {})
map('n', '<Up>',    '<c-w>k', {})
map('n', '<Right>', '<c-w>l', {})
