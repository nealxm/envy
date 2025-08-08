require('core.global')

local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
    local out = vim.fn.system({ 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath })
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            { 'failed to clone lazy.nvim:\n', 'ErrorMsg' },
            { out,                            'WarningMsg' },
            { '\npress any key to exit...' },
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
end
vim.opt.runtimepath:prepend(lazypath)

require('lazy').setup({
    defaults = { lazy = true },
    spec = { import = 'plugins' },
    install = { colorscheme = { 'rose-pine' } },
    ui = {
        size = {
            width = 0.75,
            height = 0.75
        },
        border = 'rounded'
    },
    custom_keys = nil,
    checker = { enabled = true },
    performance = {
        rtp = {
            disabled_plugins = {
                'editorconfig',
                'gzip',
                'tarPlugin',
                'tohtml',
                'zipPlugin',
                'spellfile',
                'tutor'
            }
        }
    }
})
require('core.opt')
require('core.keymap')
require('core.autocmd')

vim.lsp.enable({ 'lua_ls', 'clangd' })
vim.cmd.colorscheme('rose-pine')
