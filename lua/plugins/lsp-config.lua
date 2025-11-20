return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup({
				PATH = "prepend",
			})
		end,
	},
	-- {
	--        "mason-org/mason-lspconfig.nvim",
	--        opts = {
	-- 		auto_install = true,
	--        },
	--        dependencies = {
	--            { "mason-org/mason.nvim", opts = {} },
	--            "neovim/nvim-lspconfig",
	--        },
	-- },
	-- {
	-- 	"WhoIsSethDaniel/mason-tool-installer.nvim",
	-- 	config = function()
	-- 		require("mason-tool-installer").setup({
	-- 			ensure_installed = {
	-- 				"lua_ls",
	-- 				"stylua",
	--                    "clangd",
	-- 				"intelephense",
	-- 				"phpactor",
	-- 				"phpcs",
	--                    "php-cs-fixer",
	-- 				"clang-format",
	-- 			},
	--
	--                auto_update = true,
	--                run_onstart = true,
	--                start_delay = 3000,
	--
	--                integrations = {
	--                    ["nvim-lspconfig"] = false,  -- REQUIRED fix
	--                },
	-- 		})
	-- 	end,
	-- },
	{
		"neovim/nvim-lspconfig",
        config = function()
            -- Set default root markers for all clients
            vim.lsp.config('*', {
                root_markers = { '.git' },
            })

            -- Import clangd config
            local clangd_config = require('plugins.lsp.clangd')

            -- Register clangd LSP
            vim.lsp.config('clangd', clangd_config)

            -- Enable clangd
            vim.lsp.enable('clangd')


            -- vim.lsp.config('clangd', {
            --     cmd = { 'clangd' },
            --     filetypes = { 'c', 'cpp' },
            --     root_markers = {
            --         '.clangd',
            --         '.clang-tidy',
            --         '.clang-format',
            --         'compile_commands.json',
            --         'compile_flags.txt',
            --         'configure.ac', -- AutoTools
            --     },
            -- })
            --
            -- vim.lsp.enable('clangd')

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
