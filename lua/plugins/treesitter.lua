return {
    'nvim-treesitter/nvim-treesitter',
    main = 'nvim-treesitter',
    build = ':TSUpdate',
    opts = {
        ensure_installed = {
            'c',
            'lua',
            'python',
        },

        auto_install = true,

        highlight = {
            enable = true,
        },

        indent = {
            enable = true,
        },

        incremental_selection = {
            enable = true,
            keymaps = {
                init_selection = '<CR>',
                scope_incremental = '<CR>',
                node_incremental = '<TAB>',
                node_decremental = '<S-TAB>',
            },
        },
    },
}
