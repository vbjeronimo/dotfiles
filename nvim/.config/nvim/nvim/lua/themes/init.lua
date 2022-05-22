local themes = {
  'themes.material',
}

for _, theme in ipairs(themes) do
  local ok, err = pcall(require, theme)
  if not ok then
    error(('Error loading %s...\n\n%s'):format(theme, err))
  end
end
