return {
    'neovim/nvim-lspconfig',

    config = function()
        -- Import lspconfig plugin
        local lspconfig = require('lspconfig')

        local keymap = vim.keymap

        local opts = { noremap = true, silent = true }
        local on_attach = function(client, bufrn)
            opts.buffer = bufrn

            -- Set keybinds
            opts.desc = "Smart rename"
            keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)

            opts.desc = "Smart rename"
            keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)

            opts.desc = "Show LSP type definitions"
            keymap.set("n", "gd", vim.lsp.buf.definition, opts)

            opts.desc = "Show LSP type implementations"
            keymap.set("n", "gi", vim.lsp.buf.implementation, opts)

            opts.desc = "Show LSP references"
            keymap.set("n", "gr", "<cmd>Telescope lsp_references<CR>", opts)

            opts.desc = "Show documentation for what is under cursor"
            keymap.set("n", "K", vim.lsp.buf.hover, opts)
        end

        -- Used to enable autocompletion (assign to every lsp server config)
        local capabilities = require('cmp_nvim_lsp').default_capabilities()

        -- Change the Diagnostic symbols in the sign column (gutter)
        local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
        for type, icon in pairs(signs) do
            local hl = "DiagnosticSign" .. type
            vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
        end

        lspconfig.lua_ls.setup({
            capabilities = capabilities,
            on_attach = on_attach,
        })

        lspconfig["pyright"].setup({
            capabilities = capabilities,
            on_attach = on_attach,
        })

        lspconfig["tsserver"].setup({
            capabilities = capabilities,
            on_attach = on_attach,
        })

        lspconfig["clangd"].setup({
            capabilities = capabilities,
            on_attach = on_attach,
        })
    end
}
