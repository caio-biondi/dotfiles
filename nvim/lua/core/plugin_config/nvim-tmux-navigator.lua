return {
	"alexghergh/nvim-tmux-navigation",

	config = function()
		-- Import tmux navigator plugin safely
		local tmuxnav = require("nvim-tmux-navigation")

		-- Enable tmux navigator plugin
		tmuxnav.setup({

			-- Configure the keybinds
			keybindings = {
				left = "<C-h>",
				down = "<C-j>",
				up = "<C-k>",
				right = "<C-l>",
				last_active = "<C-\\>",
				next = "<C-Space>",
			},
		})
	end,
}
