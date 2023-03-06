-- This file can be loaded by calling `lua require('plugins')` from your init.vim

return require('packer').startup(function(use)
  -- Packer can manage itself
  use('wbthomason/packer.nvim')

  -- Fuzzy finding
  use({
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  })

  -- One Dark theme
  use('navarasu/onedark.nvim')

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  -- Lualine status line
  use({
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  })

  -- Tmux for window navigation
  use({
    "aserowy/tmux.nvim",
    config = function() return require("tmux").setup() end
  })

  -- Maximize and minimize splits easily
  use('szw/vim-maximizer')

  use({
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  })

  -- Auto closing
  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }  
  use({ "windwp/nvim-ts-autotag", after = "nvim-treesitter" }) -- autoclose tags

  -- Lsp support
  use('neovim/nvim-lspconfig')
  use('williamboman/mason.nvim')
  use('williamboman/mason-lspconfig.nvim')

  -- Autocompletion
  use("hrsh7th/nvim-cmp") -- completion plugin
  use("hrsh7th/cmp-nvim-lsp") -- for autocompletion
  use("hrsh7th/cmp-buffer") -- source for text in buffer
  use("hrsh7th/cmp-path") -- source for file system paths
  use("saadparwaiz1/cmp_luasnip") -- for autocompletion

  -- Snippets
  use("L3MON4D3/LuaSnip") -- snippet engine
  use("rafamadriz/friendly-snippets") -- useful snippets
end)
