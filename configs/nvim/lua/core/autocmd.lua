-- nvim-lua/kickstart.nvim
vim.api.nvim_create_autocmd('TextYankPost', {
    desc = 'highlight on yank',
    callback = function()
        vim.hl.on_yank()
    end
})

-- ghostty-org/ghostty
vim.api.nvim_create_autocmd({ 'BufRead', 'BufNewFile' }, {
    pattern = '*/git/config',
    desc = 'auto set git config filetype',
    callback = function()
        vim.bo.filetype = 'gitconfig'
    end
})
