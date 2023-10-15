return {
	"nvim-tree/nvim-tree.lua",
	dependencies = { "nvim-tree/nvim-web-devicons" },

	config = function()
		-- Import ntree plugin safely
		local nvimtree = require("nvim-tree")

		-- Enable ntree plugin
		nvimtree.setup({

			-- Exclude files that will not be shown
			filters = {
				dotfiles = true,
				custom = { "node_modules" },
			},
		})

		-- Sisable netrw at the very start of your init.lua
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1

		-- Set termguicolors to enable highlight groups
		vim.opt.termguicolors = true

		local keymap = vim.keymap

		keymap.set("n", "<c-n>", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle file explorer" })
	end,
}
