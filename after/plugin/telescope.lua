local ok, telescope, actions
ok, telescope = pcall(require,'telescope')
ok, actions = pcall(require,'telescope.actions')
if not ok then
    return
end

telescope.setup {
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
                ['<C-j>'] = actions.move_selection_next,
                ['<C-k>'] = actions.move_selection_previous,
                ['<C-c>'] = actions.close,
            },
        }
    }
}

telescope.load_extension('fzf')
