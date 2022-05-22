local fn = vim.fn

local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
end

return require('packer').startup({ function(use)
  -- Base Setup --
  use 'wbthomason/packer.nvim'
  use 'lewis6991/impatient.nvim'
  use 'nathom/filetype.nvim'

  -- LSP Stuff --
  use {
    'williamboman/nvim-lsp-installer',
    'neovim/nvim-lspconfig'
  }

  -- Cmp Stuff --
  use {
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-nvim-lua',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/nvim-cmp',
    'saadparwaiz1/cmp_luasnip',
    'L3MON4D3/LuaSnip',
  }

  -- Treesitter --
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -- Telescope --
  use {
    {
      'nvim-telescope/telescope.nvim',
      requires = {
        'nvim-lua/popup.nvim',
        'nvim-lua/plenary.nvim'
      }
    },
    {
      'nvim-telescope/telescope-fzf-native.nvim',
      run = 'make'
    }
  }

  -- Nvim Mapper --
  use {
    "lazytanuki/nvim-mapper",
    before = "telescope.nvim"
  }

  -- UI Stuff --
  use {
    'glepnir/dashboard-nvim',
    'nvim-lualine/lualine.nvim',
    {
      'kyazdani42/nvim-tree.lua',
      requires = {
        'kyazdani42/nvim-web-devicons'
      } },
    {
      'CosmicNvim/cosmic-ui',
      requires = {
        'MunifTanjim/nui.nvim',
        'nvim-lua/plenary.nvim'
      }
    },
  {
    'akinsho/toggleterm.nvim',
      tag = 'v1.*'
    }
  }

  -- Themes --
  use 'marko-cerovac/material.nvim'

  if packer_bootstrap then
    require('packer').sync()
  end
end,
config = {
  display = {
    open_fn = function()
      return require('packer.util').float({ border = 'rounded' })
    end,
    prompt_border = 'rounded'
  }
} })
