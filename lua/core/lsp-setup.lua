local lspconfig = require('lspconfig')
local mason = require('mason')
local mason_lsp = require('mason-lspconfig')
local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- Configuración base para servidores LSP
local on_attach = function(client, bufnr)
  -- Mapeos específicos para LSP
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', {noremap = true, silent = true})
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', {noremap = true, silent = true})
end

mason.setup()
mason_lsp.setup({
  ensure_installed = {
    'html',
    'emmet_ls',
    'cssls',
    'intelephense',
    'lua_ls',
    'clangd',
    'sqlls',
    'pyright',
    'tsserver',
    'rust_analyzer', -- Nombre oficial del servidor
    'gopls',
    'jdtls',
    'jsonls',
    'yamlls',
    'dockerls',
    'bashls'
  },
  handlers = {
    function(server_name)
      lspconfig[server_name].setup({
        on_attach = on_attach,
        capabilities = capabilities
      })
    end,
  }
})

-- Configuración específica por lenguaje
--
-- Configuración específica para Emmet
lspconfig.emmet_ls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { 'html', 'javascriptreact', 'typescriptreact', 'css' }
})

-- Configuración para C/C++
lspconfig.clangd.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = {
    "/usr/bin/clangd",
    "--background-index",
    "--clang-tidy",
    "--header-insertion=never"
  }
})

-- Configuración para Python
lspconfig.pyright.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    python = {
      analysis = {
        typeCheckingMode = "basic",
        autoSearchPaths = true
      }
    }
  }
})
