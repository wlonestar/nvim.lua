local status, nvim_lsp = pcall(require, 'lspconfig')
if (not status) then return end

nvim_lsp.clangd.setup {
  cmd = { "clangd" },
  filetypes = { "c", "cpp" },
  single_file_support = { true }
}

nvim_lsp.pyright.setup {
  cmd = { "pyright-langserver", "--sdtio" },
  filetypes = { "python" },
  settings = {{
    python = {
      analysis = {
        autoSearchPaths = true,
        diagnosticMode = "workspace",
        useLibraryCodeForTypes = true
      }
    }
  }},
  single_file_support = { true }
}

nvim_lsp.rust_analyzer.setup {
  cmd = { "rust-analyzer" },
  filetypes = { "rust" },
  settings = {
    ["rust-analyzer"] = {}
  }
}

