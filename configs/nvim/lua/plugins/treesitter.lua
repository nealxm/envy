---@class LazyPluginSpec
local spec = {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    main = 'nvim-treesitter.configs',
    ---@class TreesitterConfig
    opts = {
        auto_install = true,
        event = {
            "BufReadPre",
            "BufNewFile"
        },
        indent = { enable = true },
        autotag = { enable = true },
        highlight = {
            enable = true,
            additional_vim_regex_highlighting = true
        }
    }
}

return spec
