-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    -- rose-pine colorscheme
    use({
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            require("rose-pine").setup()
            vim.cmd('colorscheme rose-pine')
        end
    })
    -- statusline
    use 'nvim-lualine/lualine.nvim' -- Fancier statusline
    -- Useful status updates for LSP
    use 'j-hui/fidget.nvim'

    -- Additional lua configuration, makes nvim stuff amazing
    use 'folke/neodev.nvim'

    use 'lukas-reineke/indent-blankline.nvim' -- Add indentation guides even on blank lines
  
    -- devicons
    use 'nvim-tree/nvim-web-devicons'
    -- NERDTree
    use 'preservim/nerdtree'
    -- NERDCommenter
    --use 'preservim/nerdcommenter'
    use "tpope/vim-surround"
    use 'numToStr/Comment.nvim'

    use 'ryanoasis/vim-devicons'

    -- VimTex
    use 'lervag/vimtex'




    -- telescope
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }


    -- lsp zero
    use {
       'VonHeikemen/lsp-zero.nvim',
       branch = 'v1.x',
       requires = {
           -- LSP Support
           {'neovim/nvim-lspconfig'},             -- Required
           {'williamboman/mason.nvim'},           -- Optional
           {'williamboman/mason-lspconfig.nvim'}, -- Optional

           -- Autocompletion
           {'hrsh7th/nvim-cmp'},         -- Required
           {'hrsh7th/cmp-nvim-lsp'},     -- Required
           {'hrsh7th/cmp-buffer'},       -- Optional
           {'hrsh7th/cmp-path'},         -- Optional
           {'saadparwaiz1/cmp_luasnip'}, -- Optional
           {'hrsh7th/cmp-nvim-lua'},     -- Optional

           -- Snippets
           {'L3MON4D3/LuaSnip'},             -- Required
           {'rafamadriz/friendly-snippets'}, -- Optional
       }
    }


    -- use { -- LSP Configuration & Plugins
    --     'neovim/nvim-lspconfig',
    --     requires = {
    --         -- Automatically install LSPs to stdpath for neovim
    --         'williamboman/mason.nvim',
    --         'williamboman/mason-lspconfig.nvim',
    --
    --         -- Useful status updates for LSP
    --         'j-hui/fidget.nvim',
    --
    --         -- Additional lua configuration, makes nvim stuff amazing
    --         'folke/neodev.nvim',
    --     },
    -- }

    -- use { -- Autocompletion
    --     'hrsh7th/nvim-cmp',
    --     requires = { 'hrsh7th/cmp-nvim-lsp', 'L3MON4D3/LuaSnip', 'saadparwaiz1/cmp_luasnip' },
    -- }

end)
