return {
    'williamboman/mason.nvim',

    config = function() 

        -- Import Mason plugin safely
        local mason = require('mason')

        -- Enable Mason
        mason.setup({})

    end
}
