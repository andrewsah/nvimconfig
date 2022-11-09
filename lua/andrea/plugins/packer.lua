require('packer').startup(
    function()

        -- packer can manage itself
        use('wbthomason/packer.nvim')

        -- dependencies
        use('nvim-lua/plenary.nvim')
        use('kyazdani42/nvim-web-devicons')

        -- telescope (fuzzy finder)
        use('nvim-telescope/telescope.nvim')

        -- fzf extension for telescope
        use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

        -- lualine (status line)
        use('nvim-lualine/lualine.nvim')

        -- gruvbox theme
        use { "ellisonleao/gruvbox.nvim" }

        -- tresitter (better syntax highlight)
        use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

        -- config for native lsp
        use('neovim/nvim-lspconfig')

        -- helper for lsp's servers installation
        -- use('williamboman/nvim-lsp-installer')
        use { "williamboman/mason.nvim" }
        use { "williamboman/mason-lspconfig.nvim" }

        -- lsp completition
        use('hrsh7th/nvim-cmp')
        use('hrsh7th/cmp-nvim-lsp')
        use('hrsh7th/cmp-buffer')
        use('hrsh7th/cmp-path')
        use('L3MON4D3/LuaSnip')
        use('saadparwaiz1/cmp_luasnip')
        use('onsails/lspkind.nvim')

        -- comment
        use('terrortylor/nvim-comment')

        -- colored brackets
        use('p00f/nvim-ts-rainbow')

        -- sticky header
        use('nvim-treesitter/nvim-treesitter-context')

        -- todo comments
        use {
            "folke/todo-comments.nvim",
            requires = "nvim-lua/plenary.nvim",
            config = function()
                require("todo-comments").setup {
                    -- your configuration comes here
                    -- or leave it empty to use the default settings
                    -- refer to the configuration section below
                }
            end
        }
    end
)
