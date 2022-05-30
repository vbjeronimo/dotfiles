require'nvim-tree'.setup {
  view = {
    width = 30,
    mappings = {
      custom_only = false,
      list = {
        -- user mappings go here
      },
    },
  },
  diagnostics = {
    enable = true,
  },
  update_focused_file = {
    enable = true,
  },
  ignore_ft_on_setup = {
    'startify',
    'dashboard',
    'alpha',
  },
  actions = {
    open_file = {
      quit_on_open = true,
    },
  },
}
