return {
    'projekt0n/github-nvim-theme',

    -- Make sure to load this before all the other start plugins
    priority = 1000,

    config = function()
        vim.cmd [[ colorscheme github_dark_dimmed ]]
    end
}
