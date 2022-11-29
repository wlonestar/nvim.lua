local status, packer = pcall(require, 'packer')
if (not status) then print('Packer ius not installed') return end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'marko-cerovac/material.nvim' -- color theme
  use 'nvim-lualine/lualine.nvim' -- statusline
  use 'nvim-lua/plenary.nvim' -- common utilities
  use 'onsails/lspkind.nvim' -- vscode-like pictograms
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim;s built-in lsp
  use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp' -- completion
  use 'neovim/nvim-lspconfig' -- lsp

  use 'glepnir/lspsaga.nvim' -- lsp UIs
  use 'L3MON4D3/LuaSnip'
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      require('nvim-treesitter.install').update({ with_sync = true})
    end
  }
  use 'nvim-tree/nvim-web-devicons' -- icons  
  use 'nvim-tree/nvim-tree.lua' -- file browser
  use 'nvim-telescope/telescope.nvim'

  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  use 'norcalli/nvim-colorizer.lua'
  use 'folke/zen-mode.nvim'
  use 'akinsho/bufferline.nvim'

  use 'lewis6991/gitsigns.nvim'
end)

