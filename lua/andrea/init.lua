local sources = {
  'andrea.set',
  'andrea.plugins.packer',
}

for _, source in ipairs(sources) do
  local ok, msg = pcall(require, source)
  if not ok then
	  error('Unable to load ' .. source .. '\n\n' .. msg)
  end
end
