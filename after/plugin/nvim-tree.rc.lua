vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local status, nvim_tree = pcall(require, 'nvim-tree')
if (not status) then return end

nvim_tree.setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = false,
    hide_root_folder = false,
    mappings = {
      list = {}
    }
  },
  renderer = {
    icons = {
      webdev_colors = true,
      git_placement = "before",
      padding = " ",
      symlink_arrow = " -> ",
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = true,
      },
      glyphs = {
        default = "",
        git = {
          unstaged = "✗",
          staged = "✓",
        },
      },
    },
    group_empty = true,
  },
  filters = {
    dotfiles = false,
  },
})

