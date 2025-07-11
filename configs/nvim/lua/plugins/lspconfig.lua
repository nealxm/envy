return {
    "neovim/nvim-lspconfig",
    event = "BufReadPre",
    dependencies = {
        { "williamboman/mason.nvim", opts = {} },
        "williamboman/mason-lspconfig.nvim",
        "WhoIsSethDaniel/mason-tool-installer.nvim",
        "saghen/blink.cmp"
    },
    config = function()
        vim.api.nvim_create_autocmd("LspAttach", {
            group = vim.api.nvim_create_augroup("lsp-attach", { clear = true }),
            callback = function(event)
                local map = function(keys, func, desc, mode)
                    mode = mode or "n"
                    vim.keymap.set(mode, keys, func, { buffer = event.buf, desc = "LSP: " .. desc })
                end

                map("grn", vim.lsp.buf.rename, "[r]e[n]ame")
                map("gra", vim.lsp.buf.code_action, "[g]oto code [a]ction", { "n", "x" })
                map("grr", require("telescope.builtin").lsp_references, "[g]oto [r]eferences")
                map("gri", require("telescope.builtin").lsp_implementations, "[g]oto [i]mplementation")
                map("grd", require("telescope.builtin").lsp_definitions, "[g]oto [d]efinition")
                map("grD", vim.lsp.buf.declaration, "[g]oto [d]eclaration")
                map("gO", require("telescope.builtin").lsp_document_symbols, "open document symbols")
                map("gW", require("telescope.builtin").lsp_dynamic_workspace_symbols, "open workspace symbols")
                map("grt", require("telescope.builtin").lsp_type_definitions, "[g]oto [t]ype definition")

                local client = vim.lsp.get_client_by_id(event.data.client_id)
                if client and client:supports_method(client, vim.lsp.protocol.Methods.textDocument_documentHighlight, event.buf) then
                    local highlight_augroup = vim.api.nvim_create_augroup("lsp-highlight", { clear = false })
                    vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
                        buffer = event.buf,
                        group = highlight_augroup,
                        callback = vim.lsp.buf.document_highlight
                    })

                    vim.api.nvim_create_autocmd({ "CursorMoved", "CursorMovedI" }, {
                        buffer = event.buf,
                        group = highlight_augroup,
                        callback = vim.lsp.buf.clear_references
                    })

                    vim.api.nvim_create_autocmd("LspDetach", {
                        group = vim.api.nvim_create_augroup("lsp-detach", { clear = true }),
                        callback = function(event2)
                            vim.lsp.buf.clear_references()
                            vim.api.nvim_clear_autocmds({ group = "lsp-highlight", buffer = event2.buf })
                        end
                    })
                end

                if client and client:supports_method(client, vim.lsp.protocol.Methods.textDocument_inlayHint, event.buf) then
                    map("<leader>th", function()
                        vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled({ bufnr = event.buf }))
                    end, "[t]oggle inlay [h]ints")
                end
            end
        })
        vim.diagnostic.config({
            severity_sort = true,
            float = { border = "rounded", source = "if_many" },
            underline = { severity = vim.diagnostic.severity.ERROR },
            signs = {},
            virtual_text = {
                source = "if_many",
                spacing = 2,
                format = function(diagnostic)
                    local diagnostic_message = {
                        [vim.diagnostic.severity.ERROR] = diagnostic.message,
                        [vim.diagnostic.severity.WARN] = diagnostic.message,
                        [vim.diagnostic.severity.INFO] = diagnostic.message,
                        [vim.diagnostic.severity.HINT] = diagnostic.message,
                    }
                    return diagnostic_message[diagnostic.severity]
                end
            }
        })
        local capabilities = require("blink.cmp").get_lsp_capabilities()
        local servers = {
            lua_ls = {},
            gopls = {},
            ruff = {},
            zls = {}
        }
        local ensure_installed = vim.tbl_keys(servers or {})
        vim.list_extend(ensure_installed, {})
        require("mason-tool-installer").setup({ ensure_installed = ensure_installed })

        require("mason-lspconfig").setup({
            ensure_installed = {},
            automatic_installation = false,
            handlers = {
                function(server_name)
                    local server = servers[server_name] or {}
                    server.capabilities = vim.tbl_deep_extend("force", {}, capabilities, server.capabilities or {})
                    require("lspconfig")[server_name].setup(server)
                end
            }
        })
    end
}
