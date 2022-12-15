return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use 'eddyekofo94/gruvbox-flat.nvim'

  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'kyazdani42/nvim-web-devicons'
  use {
    'kyazdani42/nvim-tree.lua',
    config = function() require'nvim-tree'.setup {} end
  }
  use 'nvim-lualine/lualine.nvim'
  use 'folke/which-key.nvim'
  use 'sainnhe/everforest'
  use 'tyru/open-browser-github.vim'
  use 'tyru/open-browser.vim'
  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

  use 'nvim-treesitter/nvim-treesitter'

  -- Snippets
  use 'L3MON4D3/LuaSnip'
  use 'rafamadriz/friendly-snippets'
  use 'saadparwaiz1/cmp_luasnip'

  -- LSP stuff
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'VonHeikemen/lsp-zero.nvim'
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-nvim-lua'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/vim-vsnip'

  use 'echasnovski/mini.nvim'

  use 'github/copilot.vim'

  use 'mhinz/vim-signify'
  
  use 'vim-test/vim-test'
end)
