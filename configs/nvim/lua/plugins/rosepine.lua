return {
    'rose-pine/neovim',
    name = 'rose-pine',
    lazy = false,
    opts = {
        variant = 'main',
        dark_variant = 'main',
        styles = { transparency = true },
        highlight_groups = {
            StatusLine = { bg = 'surface' },
            StatusLineNC = { bg = 'surface' },
            Pmenu = { bg = 'base' },
            NormalFloat = { bg = 'base' }
        }
    }
}
