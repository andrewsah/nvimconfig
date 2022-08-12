local nnoremap = require('andrea.keymap').nnoremap

nnoremap('<leader>ff', function() require('telescope.builtin').find_files() end, { desc = 'Search files' })
nnoremap('<leader>fw', function() require('telescope.builtin').live_grep() end, { desc = 'Search a word' })
nnoremap('<leader>fcw', function() require('telescope.builtin').grep_string({ search = vim.fn.expand("<cword>") }) end,
    { desc = 'Search for current word' })
nnoremap('<leader>fb', function() require('telescope.builtin').buffers() end, { desc = 'Search a buffer' })
nnoremap('<leader>sd', function() require('telescope.builtin').diagnostics({ bufnr = 0 }) end,
    { desc = 'Show diagnostics' })
