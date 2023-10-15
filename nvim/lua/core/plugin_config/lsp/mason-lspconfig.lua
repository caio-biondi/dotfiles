return {
    'williamboman/mason-lspconfig.nvim',

    config = function() 
        -- Import Mason lsp plugin
        local mason_lspconfig = require('mason-lspconfig')

        -- Enable Mason lsp plugin
        mason_lspconfig.setup({

            -- List of servers for Mason to install
            ensure_installed = { 'lua_ls', 'pyright', 'tsserver', 'clangd' }

        })
    end
}
