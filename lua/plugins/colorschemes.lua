return {
    'catppuccin/nvim',
    lazy = false,
    main = 'catppuccin',
    priority = 1000,
    config = function()
        vim.cmd([[colorscheme catppuccin]])
    end,
}
