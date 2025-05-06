return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  -- My plugins here
  use "solimanhub/neocoder"
  use {'nvim-lua/plenary.nvim', module = 'plenary'}
  use 'easymotion/vim-easymotion'
  
  -- Añade estos nuevos plugins
  use 'neovim/nvim-lspconfig'          -- Configuración de LSP
  use 'hrsh7th/cmp-nvim-lsp'           -- Integración LSP con nvim-cmp
  use 'L3MON4D3/LuaSnip'               -- Motor de snippets
  use 'saadparwaiz1/cmp_luasnip'       -- Integración de snippets en cmp
  use 'williamboman/mason.nvim'        -- Gestor de instalación de LSP
  use 'williamboman/mason-lspconfig.nvim' -- Integración Mason-LSP
  use 'windwp/nvim-ts-autotag'  -- Integración con Treesitter + Emmet
  use 'dcampos/nvim-snippy'      -- Snippets avanzados

  use 'hrsh7th/nvim-cmp'           -- Motor de completado
  use 'hrsh7th/cmp-buffer'         -- Completado de buffer
  use 'hrsh7th/cmp-path'           -- Completado de rutas
  use {
    'tzachar/cmp-tabnine',         -- Integración de TabNine
    run = './install.sh',
    requires = 'hrsh7th/nvim-cmp'
  }

  --themes
  use "folke/tokyonight.nvim"
  use 'morhetz/gruvbox'

  -- Configuración post-instalación
  if packer_bootstrap then
    require('packer').sync()
  end
end)

