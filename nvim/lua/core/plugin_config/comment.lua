return {
    "numToStr/Comment.nvim",

    config = function()
        -- Import comment plugin safely
        local comment = require("Comment")

        -- Enable comment plugin
        comment.setup({

            -- Add a space b/w comment and the line
            padding = true,

            ---LHS of toggle mappings in NORMAL mode
            toggler = {
                -- Line-comment toggle keymap
                line = 'gcc',
            }

        })
    end,
}
