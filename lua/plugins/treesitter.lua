return {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',

    config = function()
        require('nvim-treesitter').setup()

        require('nvim-treesitter').install({
            'rust',
            'svelte',
            'html',
            'javascript',
            'typescript',
            'css',
            'json',
            'java',
        })

        vim.api.nvim_create_autocmd('FileType', {
            pattern = {
                'rust',
                'svelte',
                'json',
                'java',
            },
            callback = function()
                vim.treesitter.start()
            end,
        })
    end,
}
