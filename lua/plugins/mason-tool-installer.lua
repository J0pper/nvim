return {
	"WhoIsSethDaniel/mason-tool-installer.nvim",
	config = function()
		require("mason-tool-installer").setup({
			ensure_installed = {
				"lua_ls",
				"stylua",
				"intelephense",
				"phpcs",
				"php-cs-fixer",
			},
		})
	end,
}
