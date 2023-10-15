return {
    'lewis6991/gitsigns.nvim',

    config = function()
        -- Import git gutter plugin safely
        local gitsigns = require('gitsigns')

        -- Enable git gutter plugin
        gitsigns.setup {}
    end
}
