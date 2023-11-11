local status, theme = pcall(vim.cmd, "colorscheme onedark")

if not status then
  print("Colorscheme was not found")

  return
end

--theme.setup({
--  style = 'cool'
--})
