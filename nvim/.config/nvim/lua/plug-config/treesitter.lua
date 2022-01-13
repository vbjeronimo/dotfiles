require'nvim-treesitter.configs'.setup {
    ensure_installed = { 'lua', 'python', 'html', 'css', 'scss', 'javascript', 'bash', 'fish', 'regex', 'json', 'markdown' },
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false
    }
}
