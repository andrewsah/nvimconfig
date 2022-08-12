local nnoremap = require('andrea.keymap').nnoremap

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

local on_attach = function(client, bufnr)
    nnoremap('K', vim.lsp.buf.hover, { desc = 'Hover symbol details', buffer = bufnr })
    nnoremap('gd', vim.lsp.buf.definition, { desc = 'Go to definition', buffer = bufnr })
    nnoremap('gt', vim.lsp.buf.type_definition, { desc = 'Go to type definition', buffer = bufnr })
    nnoremap('gi', vim.lsp.buf.implementation, { desc = 'Go to implementation', buffer = bufnr })
    nnoremap('rs', vim.lsp.buf.rename, { desc = 'Rename symbol', buffer = bufnr })
    nnoremap('<leader>fd', vim.lsp.buf.formatting, { desc = 'Format the current document', buffer = bufnr })
end

local ok, lsp_installer = pcall(require, 'nvim-lsp-installer')
if ok then
    for _, server in ipairs(lsp_installer.get_installed_servers()) do
        local serverName = server.name
        require('lspconfig')[serverName].setup {
            on_attach = on_attach,
            capabilities = capabilities
        }
    end
end
