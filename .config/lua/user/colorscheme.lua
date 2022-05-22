--local colorscheme = "nord"
--
--local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
--if not status_ok then
--  vim.notify("colorscheme " .. colorscheme .. " not found!")
--  return
--end

vim.g.vscode_style = "dark"
vim.g.vscode_transparent = 1
vim.g.vscode_italic_comment = 1
vim.cmd([[colorscheme vscode]])
