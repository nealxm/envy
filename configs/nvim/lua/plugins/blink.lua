return {
    "saghen/blink.cmp",
    event = "VimEnter",
    version = "1.*", -- THIS IS DUMB >:(

    opts = {
        keymap = {
            preset = "default",
        },
        completion = {
            documentation = { auto_show = false, auto_show_delay_ms = 500 },
        },
        sources = {
            default = { "lazydev", "lsp", "path", "buffer", "cmdline" },
            providers = {
                lazydev = { module = "lazydev.integrations.blink", score_offset = 100 },
            },
        },
        fuzzy = { implementation = "rust", prebuilt_binaries = { download = true } },
        signature = { enabled = true },
    },
}
