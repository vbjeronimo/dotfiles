local plugins = {
  'plugins.nvim-mapper',
  'plugins.nvim-tree',
  'plugins.treesitter',
  'plugins.telescope',
  'plugins.dashboard',
  'plugins.lualine',
  'plugins.cosmic-ui',
  'plugins.toggleterm',
}

for _, plugin in ipairs(plugins) do
  local ok, err = pcall(require, plugin)
  if not ok then
    error(('Error loading %s...\n\n%s'):format(plugin, err))
  end
end
