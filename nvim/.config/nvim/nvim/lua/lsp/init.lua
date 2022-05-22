local lsp_modules = {
  'lsp.lspconfig',
  'lsp.completion',
}

for _, module in ipairs(lsp_modules) do
  local ok, err = pcall(require, module)
  if not ok then
    error(('Error loading %s...\n\n%s'):format(module, err))
  end
end
