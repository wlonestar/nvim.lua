local status, nvim_lsp = pcall(require, 'lspconfig')
if (not status) then return end

nvim_lsp.sumneko_lua.setup {
  settings = {
    Lua = {
      runtime = {
        version = 'LuaJIT',
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    }
  }
}

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

