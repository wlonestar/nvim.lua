local status, material = pcall(require, 'material')
if (not status) then return end

material.setup({
  styles = {
    comments = { italic = false }
  }
})

-- enable material material
vim.cmd 'colorscheme material'
-- set the theme palenight
vim.g.material_style = "palenight"

