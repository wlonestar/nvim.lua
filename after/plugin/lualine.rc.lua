local status, lualine = pcall(require, 'lualine')
if (not status) then return end

lualine.setup({
  options = {
    icons_enabled = true,
    themes = 'palenight',
    section_separators = { left = '', right = '' },
    component_separators = { left = '', right = '' },
    disabled_filetypes = {}
  },
  sections = {
    lualine_a = {
      {
        'mode',
        symbols = {
          modified = ' ●',
          alternate_file = '#',
          directory =  '',
        }
      }
    },
    lualine_b = { 'branch' },
    lualine_c = {{
      'filename',
      file_status = true,
      path = 0
    }},
    lualine_x = {
      {
        'diagnostics',
        sources = { 'nvim_diagnostic', 'coc' },
        symbols = {error = 'E', warn = 'W', info = 'I', hint = 'H'}
      },
      'encoding',
      'filetype'
    },
    lualine_y = { 'progress' },
    lualine_z = { 'location' }
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {{
      'filename',
      file_status = true,
      path = 1
    }},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = { 'fugitive' }
})

