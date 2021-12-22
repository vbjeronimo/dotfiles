-- module export
M = {}

-- keymapping
local M.map = vim.api.nvim_set_keymap

-- "print(vim.inspect(x))" wrapper for more convenient inspection
function M.put(...)
  local objects = {}
  for i = 1, select('#', ...) do
    local v = select(i, ...)
    table.insert(objects, vim.inspect(v))
  end

  print(table.concat(objects, '\n'))
  return ...
end
