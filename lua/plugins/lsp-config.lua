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

            -- Import LSP configs
            local clangd_config        = require('plugins.lsp.clangd')        -- clangd
            local pyright_config       = require('plugins.lsp.pyright')       -- pyright
            local vtsls_config         = require('plugins.lsp.vtsls')         -- vtsls
            local html_lsp_config      = require('plugins.lsp.html-lsp')      -- html
            local rust_analyzer_config = require('plugins.lsp.rust-analyzer') -- rust-analyzer

            -- Register LSP
            vim.lsp.config('clangd',        clangd_config)        -- clangd
            vim.lsp.config('pyright',       pyright_config)       -- pyright
            vim.lsp.config('vtsls',         vtsls_config)         -- vtsls
            vim.lsp.config('html-lsp',      html_lsp_config)      -- html
            vim.lsp.config('rust-analyzer', rust_analyzer_config) -- rust-analyzer

            -- Enable LSP
            vim.lsp.enable('clangd')                              -- clangdja
            vim.lsp.enable('pyright')                             -- pyright
            vim.lsp.enable('vtsls')                               -- vtsls
            vim.lsp.enable('html-lsp')                            -- html
            vim.lsp.enable('rust-analyzer')                       -- rust-analyzer


			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
