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
            require("rose-pine").setup({
                disable_italics = false
            }
            )
            --vim.cmd('colorscheme rose-pine')
        end
    })
    -- Color schemes
    use 'navarasu/onedark.nvim' -- Theme inspired by Atom
    use 'folke/tokyonight.nvim'
    use { "catppuccin/nvim", as = "catppuccin" }
    use { "ellisonleao/gruvbox.nvim" }
    use 'nyoom-engineering/nyoom.nvim'
    use { "bluz71/vim-nightfly-colors", as = "nightfly" }
    use "savq/melange-nvim"
    use 'rmehri01/onenord.nvim'

    -- statusline
    use {
        'nvim-lualine/lualine.nvim', -- Fancier statusline
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    -- Useful status updates for LSP
    use 'j-hui/fidget.nvim'
    -- treesitter
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    -- Additional lua configuration, makes nvim stuff amazing
    use 'folke/neodev.nvim'
    -- Add indentation guides even on blank lines
    use 'lukas-reineke/indent-blankline.nvim'
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
       },
       --disable = true
    }

    use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
    --use 'preservim/vim-markdown'
    use {"akinsho/toggleterm.nvim", tag = '*', config = function()
        require("toggleterm").setup()
    end}
end)
