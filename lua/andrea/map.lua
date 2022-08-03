local map = vim.keymap.set

map('', '<Space>', '<Nop>') -- disable space cause leader

map('n', '<leader>w', '<cmd>w<cr>') -- write mapping
map('n', '<leader>q', '<cmd>q<cr>') -- quit mapping
map('n', '<leader>c', '<cmd>close<cr>')
map('n', '<leader>xx', '<cmd>Ex<cr>') -- netrw mapping
map('n', '<leader>bc', '<cmd>bd<cr>') -- buffer close mapping

-- Telescope
map('n', '<leader>ff', function() require('telescope.builtin').find_files() end, { desc = 'Search files' })
map('n', '<leader>fw', function() require('telescope.builtin').live_grep() end, { desc = 'Search a word' })
map('n', '<leader>fb', function() require('telescope.builtin').buffers() end, { desc = 'Search a buffer' })
