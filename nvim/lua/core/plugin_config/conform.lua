return {
	"stevearc/conform.nvim",

	config = function()
		-- Import formatting plugin safely
		local conform = require("conform")

		-- Enable formating plugin
		conform.setup({

			formatters_by_ft = {
				lua = { "stylua" },
				-- Conform will run multiple formatters sequentially
				python = { "isort", "black" },
				-- Use a sub-list to run only the first available formatter
				javascript = { { "prettierd", "prettier" } },

				typescript = { { "prettierd", "prettier" } },

				typescriptreact = { { "prettierd", "prettier" } },
			},

			format_on_save = {
				-- These options will be passed to conform.format()
				timeout_ms = 500,
				lsp_fallback = true,
			},
		})
	end,
}
