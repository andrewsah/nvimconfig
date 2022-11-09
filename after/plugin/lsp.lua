local nnoremap = require('andrea.keymap').nnoremap

local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())

local on_attach = function(client, bufnr)
    nnoremap('K', vim.lsp.buf.hover, { desc = 'Hover symbol details', buffer = bufnr })
    nnoremap('gd', vim.lsp.buf.definition, { desc = 'Go to definition', buffer = bufnr })
    nnoremap('gD', vim.lsp.buf.declaration , { desc = 'Go to definition', buffer = bufnr })
    nnoremap('gt', vim.lsp.buf.type_definition, { desc = 'Go to type definition', buffer = bufnr })
    nnoremap('gi', vim.lsp.buf.implementation, { desc = 'Go to implementation', buffer = bufnr })
    nnoremap('rs', vim.lsp.buf.rename, { desc = 'Rename symbol', buffer = bufnr })
    nnoremap('fd', vim.lsp.buf.format, { desc = 'Format the current document', buffer = bufnr })
    nnoremap('ca', vim.lsp.buf.code_action, { desc = 'Show code actions to fix stuff', buffer = bufnr })
end

local ok, mason_lsp = pcall(require, 'mason-lspconfig')
if ok then
    for _, serverName in ipairs(mason_lsp.get_installed_servers()) do
        require('lspconfig')[serverName].setup {
            on_attach = on_attach,
            capabilities = capabilities
        }
    end
end
