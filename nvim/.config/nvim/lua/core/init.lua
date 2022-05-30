local core_modules = {
  'core.plugins',
  'core.settings',
  'core.autocommands',
  'core.mappings',
}

for _, module in ipairs(core_modules) do
  local ok, err = pcall(require, module)
  if not ok then
    error(('Error loading %s...\n\n%s'):format(module, err))
  end
end
