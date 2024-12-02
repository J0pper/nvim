return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },

    init = function()
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>p', builtin.find_files, {})
    end,
}
