return {
    'nvim-treesitter/nvim-treesitter',
    event = 'BufReadPre',
    build = ':TSUpdate',
    branch = 'main',
    opts = {
        auto_install = true,
        highlight = { enable = true },
        indent = { enable = true }
    }
}
