return {
    'nvim-tree/nvim-tree.lua',
    main = 'nvim-tree',
    lazy = false,
    dependencies = {
        'nvim-tree/nvim-web-devicons',
    },

    opts = {
        sort = {
            sorter = 'case_sensitive',
        },
        view = {
            width = 30,
        },
        renderer = {
            group_empty = true,
        },
        filters = {
            dotfiles = true,
        },

    },

    config = function(_, opts)
        require('nvim-tree').setup(opts)

        vim.keymap.set('n', '<C-n>', ':NvimTreeOpen<CR>', {})
    end,
}
