return {
    'nvim-mini/mini.nvim',
    version = false,

    config = function()
        require('mini.align').setup()
        require('mini.pairs').setup()

        require('mini.animate').setup()
        require('mini.icons').setup()
        require('mini.indentscope').setup()


        require('mini.starter').setup()
    end,
}
