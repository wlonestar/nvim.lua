require('base')
require('highlights')
require('maps')
require('plugins')

local has = function(x)
  return vim.fn.has(x) == 1
end

-- enable material material
vim.cmd 'colorscheme material'
-- set the theme palenight
vim.g.material_style = "palenight"

