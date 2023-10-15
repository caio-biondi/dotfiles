return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},

	config = function()
		-- Import Mason plugin safely
		local mason = require("mason")

		-- Import Mason lsp plugin
		local mason_lspconfig = require("mason-lspconfig")

		-- Impot Mason tool installer plugin safely
		local mason_tool_installer = require("mason-tool-installer")

		-- Enable Mason
		mason.setup()

		-- Enable Mason lsp plugin
		mason_lspconfig.setup({

			-- List of servers for Mason to install
			ensure_installed = { "lua_ls", "pyright", "tsserver", "clangd" },
		})

		mason_tool_installer.setup({
			ensure_installed = {
				"prettier", -- Prettier formatter
				"prettierd", -- Prettierd formatter
				"stylua", -- Lua formatter
				"isort", -- Python formatter
				"black", -- Python formatter
			},
		})
	end,
}
