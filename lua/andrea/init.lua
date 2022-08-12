local sources = {
  'andrea.set',
  -- 'andrea.map',
  'andrea.plugins.packer',
  'andrea.plugins.telescope',
  -- 'andrea.plugins.nightfox',
  'andrea.plugins.gruvbox',
  'andrea.plugins.lualine',
  'andrea.plugins.lsp-installer',
  'andrea.plugins.lsp',
  'andrea.plugins.cmp',
  'andrea.plugins.comment'
}

for _, source in ipairs(sources) do
  local ok, msg = pcall(require, source)
  if not ok then
	  error('Unable to load ' .. source .. '\n\n' .. msg)
  end
end

