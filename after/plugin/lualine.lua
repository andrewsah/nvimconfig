local ok, lualine = pcall(require, 'lualine')
if not ok then
    return
end

lualine.setup {
    options = {
        theme = 'gruvbox',
        section_separators = '',
        component_separators = '|'
    },
    sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'filename' },
        lualine_c = { 'branch', 'diff', 'diagnostics' },
        lualine_x = { 'encoding' },
        lualine_y = { 'filetype' },
        lualine_z = { 'location' }
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { 'filename' },
        lualine_x = { 'location' },
        lualine_y = {},
        lualine_z = {}
    },
}
