return {
    "nvim-treesitter/nvim-treesitter",
    event = "BufReadPre",
    build = ":TSUpdate",
    branch = "main",
    opts = {
        ensure_installed = { "lua", "markdown", "toml", "vimdoc", "zig", "go" },
        auto_install = true,
        highlight = { enable = true },
        indent = { enable = true }
    }
}
