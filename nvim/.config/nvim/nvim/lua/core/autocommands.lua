local fn = vim.fn

-- Groups --
vim.api.nvim_create_augroup('packer_user_config', { clear = true })
vim.api.nvim_create_augroup('bufcheck', { clear = true })
vim.api.nvim_create_augroup('typecheck', { clear = true })

-- Autocommands --
vim.api.nvim_create_autocmd('BufWritePost', {
  group = 'packer_user_config',
  pattern = 'plugins.lua',
  command = 'source <afile> | PackerCompile'
})

vim.api.nvim_create_autocmd('TextYankPost', {
  group = 'bufcheck',
  pattern = '*',
  callback = function() vim.highlight.on_yank({ timeout = 500 }) end
})

vim.api.nvim_create_autocmd('BufReadPost', {
  group = 'bufcheck',
  pattern = '*',
  callback = function()
    if fn.line("'\"") > 0 and fn.line("'\"") <= fn.line('$') then
      fn.setpos('.', fn.getpos("'\""))
      vim.api.nvim_feedkeys('zz', 'n', true)
    end
  end
})

vim.api.nvim_create_autocmd('BufEnter', {
  group = 'typecheck',
  pattern = '*.lua',
  callback = function()
    vim.bo.tabstop = 2
    vim.bo.shiftwidth = 2
  end
})
