
vim.cmd [[packadd packer.nvim]]

-- Trying to use less plugins
return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional
        },
    }


    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            -- Snippet Collection (Optional)
            {'rafamadriz/friendly-snippets'},
        }
    }
    use { "catppuccin/nvim", as = "catppuccin"}
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use { "mbbill/undotree" }
    use { "tpope/vim-fugitive" }
    use { "theprimeagen/harpoon" }
    use { "windwp/nvim-autopairs", config = function() require("nvim-autopairs").setup {} end }
    use {
        "folke/trouble.nvim",
        requires = "nvim-tree/nvim-web-devicons"
    }
    use {
        "jose-elias-alvarez/null-ls.nvim",
        requires = {'nvim-lua/plenary.nvim'}
    }

end)
