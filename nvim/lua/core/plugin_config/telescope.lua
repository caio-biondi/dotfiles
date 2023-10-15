return {
    'nvim-telescope/telescope.nvim',
    version = '0.1.3',
    dependencies = { { 'nvim-lua/plenary.nvim' } },

    config = function()
        -- Import Telescope plugin safely
        local telescope = require('telescope')

        local actions = require('telescope.actions')

        -- Enable Telescope plugin
        telescope.setup({

            defaults = {

                path_display = { "truncate " },

                mappings = {
                    i = {
                        ["<C-k>"] = actions.move_selection_previous, -- Move to previous result
                        ["<C-j>"] = actions.move_selection_next,     -- Move to next result
                        ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
                    }
                }
            },
        })

        local keymap = vim.keymap

        keymap.set('n', '<c-p>',
            "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>",
            opt)
    end
}
