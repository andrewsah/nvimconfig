local ok, telescope_builtin = pcall(require, 'telescope.builtin')
if not ok then
    return
end

local nnoremap = require('andrea.keymap').nnoremap

nnoremap('<leader>ff', function() telescope_builtin.find_files() end, { desc = 'Search files' })
nnoremap('<leader>fw', function() telescope_builtin.live_grep() end, { desc = 'Search a word' })
nnoremap('<leader>fcw', function() telescope_builtin.grep_string({ search = vim.fn.expand("<cword>") }) end,
    { desc = 'Search for current word' })
nnoremap('<leader>fb', function() telescope_builtin.buffers() end, { desc = 'Search a buffer' })
nnoremap('<leader>sd', function() telescope_builtin.diagnostics({ bufnr = 0 }) end,
    { desc = 'Show diagnostics' })
