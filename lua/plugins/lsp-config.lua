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
		"neovim/nvim-lspconfig",
        config = function()
            -- Enable LSP
            vim.lsp.enable({
                'clangd',
                'pyright',
                'vtsls',
                'html-lsp',
                'css-lsp',
                'rust_analyzer',
                'jdtls',
                'nixd',
                'oxfmt',
                'svelte',
                'zls',
            })


			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
