vim.g.dashboard_custom_header = {
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  '███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗',
  '████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║',
  '██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║',
  '██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║',
  '██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║',
  '╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝',
  '',
  '',
  '',
}




vim.g.dashboard_default_executive = 'telescope'

vim.g.dashboard_session_directory = vim.fn.stdpath('data') .. '/sessions'

vim.g.dashboard_custom_section = {
  find_file = {
    description = { 'Find File            <leader>ff' },
    command = 'Telescope find_file',
  },
  search_history = {
    description = { 'Seach History        <leader>fh' },
    command = 'Telescope oldfiles',
  },
  file_explorer = {
    description = { 'File Manager         <C-n>     ' },
    command = 'NvimTreeToggle',
  },
  find_string = {
    description = { 'Grep String          <leader>fg' },
    command = 'Telescope grep_string',
  },
  last_session = {
    description = { 'Load Session         <leader>sl' },
    command = 'lua vim.cmd(":silent RestoreSession")',
  },
}
