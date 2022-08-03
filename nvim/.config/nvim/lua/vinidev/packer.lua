vim.cmd [[packadd packer.nvim]]

local use = require('packer').use

return require('packer').startup(function()
    -- Packer
    use('wbthomason/packer.nvim')

    -- Theme
    use('folke/tokyonight.nvim')

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

    -- TreeSitter and things related 
    use({
      'nvim-treesitter/nvim-treesitter', {
        run = ":TSUpdate"
      }
    })

    use('nvim-treesitter/nvim-treesitter-context')

    -- Visual
    use('norcalli/nvim-colorizer.lua')

    -- Games
    use('ThePrimeagen/vim-be-good')

    -- Misc
    use('tpope/vim-surround')

    -- FuzzyFinder
    use({
      'nvim-telescope/telescope.nvim',
      requires = {{
        use('nvim-lua/plenary.nvim')
      }}
    })
end)
