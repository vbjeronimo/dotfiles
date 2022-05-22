local map = require('utils').map

vim.g.mapleader = ' '

-- Nvim Tree --
map('n', '<C-n>', ':NvimTreeToggle<CR>')
map('n', '<leader>r', ':NvimTreeRefresh<CR>')

-- Telescope --
map('n', '<leader>ff', ':Telescope find_files<CR>')
map('n', '<leader>fh', ':Telescope oldfiles<CR>')
map('n', '<leader>fg', ':Telescope live_grep<CR>')
map('n', '<leader>fb', ':Telescope buffers<CR>')
map('n', '<leader>ft', ':Telescope help_tags<CR>')

-- Cosmic UI --
map('n', '<leader>rn', '<cmd>lua require("cosmic-ui").rename()<cr>')
map('n', '<leader>ca', '<cmd>lua require("cosmic-ui").code_actions()<cr>')
map('v', '<leader>ca', '<cmd>lua require("cosmic-ui").range_code_actions()<cr>')
