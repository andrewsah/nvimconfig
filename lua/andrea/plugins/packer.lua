require('packer').startup(
function()

    -- packer can manage itself
    use('wbthomason/packer.nvim')

    -- dependencies
    use('nvim-lua/plenary.nvim')
    use('kyazdani42/nvim-web-devicons')

    -- Generic plugins
    use('nvim-telescope/telescope.nvim')                             -- telescope (fuzzy finder)
    use({'nvim-telescope/telescope-fzf-native.nvim', run = 'make'})  -- fzf extension for telescope
    use('nvim-lualine/lualine.nvim')                                 -- lualine (status line)
    use("ellisonleao/gruvbox.nvim")                                  -- gruvbox theme
    use({'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'})      -- tresitter (better syntax highlight)
    use('nvim-treesitter/nvim-treesitter-context')                   -- sticky header
    use('p00f/nvim-ts-rainbow')                                      -- colored brackets
    use('terrortylor/nvim-comment')
    use("rcarriga/nvim-notify")                                      -- popup window for notifications

    -- LSP (etc.) plugins
    use('neovim/nvim-lspconfig')                                     -- config for native lsp
    use{"williamboman/mason.nvim"}                                   -- helper for lsp's servers installation
    use{"williamboman/mason-lspconfig.nvim"}
    use('hrsh7th/nvim-cmp')                                          -- completition "engine"
    use('hrsh7th/cmp-nvim-lsp')                                      -- lsp completition
    use('hrsh7th/cmp-buffer')                                        -- buffer symbols completition
    use('hrsh7th/cmp-path')                                          -- path completition
    use('L3MON4D3/LuaSnip')
    use('saadparwaiz1/cmp_luasnip')
    use('onsails/lspkind.nvim')

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

    use("j-hui/fidget.nvim")

end
)
