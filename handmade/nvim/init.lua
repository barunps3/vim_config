-- Set Options
vim.opt.nu = true
vim.opt.clipboard:append{"unnamedplus"}
vim.opt.history = 50
vim.opt.cursorline = true
vim.opt.relativenumber = true
vim.opt.ignorecase = true

-- Colorscheme
vim.cmd.colorscheme("default")

-- Keybindings
vim.g.mapleader = " "
vim.keymap.set('n', 'noh', ':nohls<CR>')
vim.keymap.set('n', '<Leader>w', ':w<CR>')
vim.keymap.set('n', '<Leader>J', '5j')
vim.keymap.set('n', '<Leader>K', '5k')
vim.keymap.set('n', '<Leader><Backspace>', ':Rex<CR>')
vim.keymap.set('n', '<Leader>f', ':edit .<CR>')
vim.keymap.set('n', 'rnu', ':set rnu!<CR>')

vim.api.nvim_command("match TrailingSpace /\\s\\+$/")
vim.api.nvim_command("highlight TrailingSpace ctermbg=red guibg=red")  

