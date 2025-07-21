return {
    'rose-pine/neovim',
    name = 'rose-pine',
    lazy = false,
    config = function()
        require('rose-pine').setup({
            variant = 'main',
            dark_variant = 'main',
            styles = { transparency = true },
            highlight_groups = {
                StatusLine = { bg = 'surface' },
                StatusLineNC = { bg = 'surface' },
            }
        })
        vim.cmd.colorscheme('rose-pine')
    end
}
