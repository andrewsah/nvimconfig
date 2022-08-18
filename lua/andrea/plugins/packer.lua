return require('packer').startup(
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

        -- nightfox theme
        -- use('EdenEast/nightfox.nvim')

        -- gruvbox theme
        use { "ellisonleao/gruvbox.nvim" }

        -- tresitter (better syntax highlight)
        use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

        -- config for native lsp
        use('neovim/nvim-lspconfig')

        -- helper for lsp's servers
        use('williamboman/nvim-lsp-installer')

        -- lsp completition
        use('hrsh7th/nvim-cmp')
        use('hrsh7th/cmp-nvim-lsp')
        use('hrsh7th/cmp-buffer')
        use('hrsh7th/cmp-path')
        use('L3MON4D3/LuaSnip')
        use('saadparwaiz1/cmp_luasnip')

        -- indent lines
        -- use("lukas-reineke/indent-blankline.nvim")

        -- comment
        use('terrortylor/nvim-comment')

        -- colored brackets
        use('p00f/nvim-ts-rainbow')

    end
)
