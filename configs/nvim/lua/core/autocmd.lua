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
vim.api.nvim_create_autocmd({ 'BufRead', 'BufNewFile' }, {
    pattern = 'cmakelists.txt',
    desc = 'auto set cmake filetype',
    callback = function()
        vim.bo.filetype = 'cmake'
    end
})

-- gpanders.com/blog
vim.api.nvim_create_autocmd('LspAttach', {
    desc = 'enable lsp autocompletion',
    callback = function(ev)
        local client = vim.lsp.get_client_by_id(ev.data.client_id)
        if client and client:supports_method('textDocument/completion') then
            vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
        end
    end
})
