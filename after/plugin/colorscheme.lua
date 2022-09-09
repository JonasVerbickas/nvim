-- Lua:
-- For dark theme (neovim's default)
vim.o.background = 'dark'
-- For light theme
-- vim.o.background = 'light'
local monokai = require('monokai')
local palette = monokai.soda
--monokai.setup { palette = palette }

vim.g.monokaipro_filter = "classic"
vim.cmd[[colorscheme monokaipro]]

--Lua:
vim.api.nvim_set_keymap('n', '<C-9>', [[<Cmd>lua require('monokaipro.functions').change_filter('spectrum')<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-0>', [[<Cmd>lua require('monokaipro.functions').change_filter('classic')<CR>]], { noremap = true, silent = true })



