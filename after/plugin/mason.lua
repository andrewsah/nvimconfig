local ok, mason, mason_lsp
ok, mason = pcall(require, 'mason')
ok, mason_lsp = pcall(require, 'mason-lspconfig')
if not ok then
    return
end

mason.setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

mason_lsp.setup()
