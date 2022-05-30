require'nvim-treesitter.configs'.setup {
  ensure_installed = { 'bash', 'css', 'fish', 'html', 'javascript', 'json', 'lua', 'python', 'typescript' },
  sync_install = false,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = true,
  },
}
