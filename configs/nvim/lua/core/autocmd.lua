vim.api.nvim_create_autocmd('User', {
    pattern = 'LazyVimStarted',
    once = true,
    desc = 'add alpha footer',
    callback = function()
        local stats = require('lazy').stats()
        require('alpha.themes.dashboard').section.footer.val = function()
            return ('loaded %d/%d plugins in %.3f ms')
                :format(stats.loaded, stats.count, stats.startuptime)
                or [[¯\_(ツ)_/¯]]
        end
        vim.cmd.AlphaRedraw()
    end
})

-- nvim-lua/kickstart.nvim
vim.api.nvim_create_autocmd('TextYankPost', {
    desc = 'highlight on yank',
    callback = function()
        vim.hl.on_yank()
    end
})
