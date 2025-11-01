return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup({
				PATH = "prepend",
			})
		end,
	},
	{
        "mason-org/mason-lspconfig.nvim",
        opts = {
			auto_install = true,
        },
        dependencies = {
            { "mason-org/mason.nvim", opts = {} },
            "neovim/nvim-lspconfig",
        },
	},
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		config = function()
			require("mason-tool-installer").setup({
				ensure_installed = {
					"lua_ls",
					"stylua",
                    "clangd",
					"intelephense",
					"phpactor",
					"phpcs",
                    "php-cs-fixer",
					"clang-format",
				},

                auto_update = true,
                run_onstart = true,
                start_delay = 3000,

			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
        config = function()
            require("lspconfig")

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
