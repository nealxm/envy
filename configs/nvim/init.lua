vim.loader.enable()

require('core.global')
require('core.opt')
require('core.plugin')
require('core.keymap')
require('core.autocmd')

vim.lsp.enable({ 'clangd', 'gopls', 'lua_ls', 'neocmake' })
vim.cmd.colorscheme('rose-pine')