local telescope = require('telescope')
telescope.load_extension('mapper')

telescope.setup {
  defaults = {
    file_ignore_patterns = {
      '.git/',
      '.cache/',
      'node_modules/',
    },
    dynamic_preview_title = true,
    vimgrep_arguments = {
      'rg',
      '--ignore',
      '--hidden',
      '--color=never',
      '--no-heading',
      '--with-filename',
      '--line-number',
      '--column',
      '--smart-case',
      '--trim',
    },
    mappings = {
      i = {
        ["<C-h>"] = "which_key"
      }
    }
  },
  pickers = {
    find_files = {
      hidden = true,
    },
    git_files = {
      hidden = true,
    },
    oldfiles = {
      initial_mode = 'normal',
    }
  },
}

require('telescope').load_extension('fzf')
