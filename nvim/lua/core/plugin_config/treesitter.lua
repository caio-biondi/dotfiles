return {
    'nvim-treesitter/nvim-treesitter',

    config = function()
        -- Import Treesitter plugin safely
        local treesitter = require('nvim-treesitter.configs')

        treesitter.setup({

            -- Ensure these language parsers are installed
            ensure_installed = { 'lua', 'python', 'typescript', 'c', 'javascript' },

            -- Enable syntax highlighting
            highlight = {
                enable = true,
            },

        })
    end
}
