return {
    'nvim-lualine/lualine.nvim',

    config = function()
        -- Import lualine plugin safely
        local lualine = require('lualine')

        -- Enable lualine plugin
        lualine.setup({

            options = {
                -- Enable icons on all components
                icons_enabled = true,
                -- Lualine theme
                theme = 'auto'
            },

            sections = {
                lualine_a = {
                    {
                        'filename',
                        -- Display relative path
                        path = 1
                    }
                }
            }
        })
    end
}
