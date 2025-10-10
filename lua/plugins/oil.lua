return {
    'stevearc/oil.nvim',
    dependencies = {
        'nvim-tree/nvim-web-devicons',
        "nvim-mini/mini.icons"
    },

    lazy = false,

    config = function ()
        local oil = require("oil")
        oil.setup()
        -- require("oil").setup()

        vim.keymap.set("n", "-", oil.open, { desc = "Open parent directory" })
    end
}
