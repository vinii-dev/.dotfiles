vim.cmd [[packadd packer.nvim]]

local use = require('packer').use

return require('packer').startup(function()
  -- Packer
  use('wbthomason/packer.nvim')

  -- Theme
  use('folke/tokyonight.nvim')
  use('ayu-theme/ayu-vim')

  -- LSP and things related 
  use('neovim/nvim-lspconfig')
  use('hrsh7th/cmp-nvim-lsp')
  use('hrsh7th/cmp-buffer')
  use('hrsh7th/nvim-cmp')
  use('onsails/lspkind.nvim')
  use('nvim-lua/lsp_extensions.nvim')
  use('glepnir/lspsaga.nvim')
  use('simrat39/symbols-outline.nvim')
  use('L3MON4D3/LuaSnip')
  use('saadparwaiz1/cmp_luasnip')
  use('williamboman/nvim-lsp-installer')

  use {
  "folke/trouble.nvim",
  requires = "kyazdani42/nvim-web-devicons",
  config = function()
    require("trouble").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  end
  }

  -- TreeSitter and things related 
  use({
    'nvim-treesitter/nvim-treesitter', {
      run = ":TSUpdate"
    }
  })

  use('nvim-treesitter/nvim-treesitter-context')

  -- Visual
  use('norcalli/nvim-colorizer.lua')
  use('kyazdani42/nvim-web-devicons')

  -- Games
  use('ThePrimeagen/vim-be-good')

  -- Misc
  use('tpope/vim-surround')
  use({
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  })
  use {
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup {}
    end
  }

  -- FuzzyFinder
  use({
    'nvim-telescope/telescope.nvim',
    requires = {{
      use('nvim-lua/plenary.nvim')
    }}
  })
end)
