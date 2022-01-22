local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

vim.cmd [[
  augroup Packer
    autocmd!
    autocmd BufWritePost init.lua PackerCompile
  augroup end
]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin

  use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate'
  }

  use 'kyazdani42/nvim-tree.lua'
  use 'kyazdani42/nvim-web-devicons'
  use 'nvim-lualine/lualine.nvim'
  use 'akinsho/toggleterm.nvim'

  use 'Yggdroot/indentLine'
  use 'windwp/nvim-autopairs'

  use 'tpope/vim-fugitive'

  use 'pineapplegiant/spaceduck'
  use 'marko-cerovac/material.nvim'
  use 'bluz71/vim-nightfly-guicolors'

  if packer_bootstrap then
    require('packer').sync()
  end
end)
