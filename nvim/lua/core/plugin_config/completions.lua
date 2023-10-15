return {
	"hrsh7th/nvim-cmp",
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		"L3MON4D3/LuaSnip",
	},

	config = function()
		-- Import completions plugin safely
		local cmp = require("cmp")

		-- Enable completions plugin
		cmp.setup({

			mapping = cmp.mapping.preset.insert({
				["<C-k>"] = cmp.mapping.select_prev_item(), -- Previous suggestion
				["<C-j>"] = cmp.mapping.select_next_item(), -- Next suggestion
				["<C-b>"] = cmp.mapping.scroll_docs(-4), -- Scroll down cmp's documentation window
				["<C-f>"] = cmp.mapping.scroll_docs(4), -- Scroll up cmp's documentation window
				["<C-Space>"] = cmp.mapping.complete(), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
				["<C-e>"] = cmp.mapping.abort(), -- Close completion window
				["<CR>"] = cmp.mapping.confirm({ select = true }),
			}),

			-- Configure how nvim-cmp interacts with snippet engine
			snippet = {
				expand = function(args)
					require("luasnip").lsp_expand(args.body)
				end,
			},

			sources = cmp.config.sources({
				{ name = "nvim_lsp" },
				{ name = "luasnip" },
			}, {
				{ name = "buffer" },
			}),
		})
	end,
}
