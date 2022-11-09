local nnoremap = require('andrea.keymap').nnoremap

nnoremap('<Space>', '<Nop>') -- disable space cause leader

nnoremap('<leader>w', '<cmd>w<cr>') -- write mapping
nnoremap('<leader>q', '<cmd>q<cr>') -- quit mapping
nnoremap('<leader>c', '<cmd>close<cr>')
nnoremap('<leader>xx', '<cmd>Ex<cr>') -- netrw mapping
nnoremap('<leader>bc', '<cmd>bd<cr>') -- buffer close mapping

nnoremap('<leader>st', '<cmd>TodoTelescope<cr>') -- todo comments in telescope
