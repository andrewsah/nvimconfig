require('telescope').setup {
    defaults = {
        prompt_prefix = ' ',
        sorting_strategy = 'ascending',
        layout_strategy = 'horizontal',
        file_ignore_patterns = { '^node_modules/' },
        layout_config = {
            horizontal = {
                prompt_position = 'top'
            }
        },
        borderchars = {
            prompt = { " ", " ", "─", " ", " ", " ", " ", " " },
            results = { " " },
            preview = { " " },
        },
        mappings = {
            i = {
                ['<C-j>'] = require('telescope.actions').move_selection_next,
                ['<C-k>'] = require('telescope.actions').move_selection_previous,
                ['<C-c>'] = require('telescope.actions').close,
            },
        }
    }
}

require('telescope').load_extension('fzf')
