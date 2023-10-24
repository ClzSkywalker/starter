-- flutter lsp
return {
    {
        'akinsho/flutter-tools.nvim',
        lazy = false,
        dependencies = {
            'nvim-lua/plenary.nvim',
            'stevearc/dressing.nvim', -- optional for vim.ui.select
        },
        config = true,
    },
    -- {
    --     'RobertPietraru/bloc.nvim',
    --     keys = { {
    --         "<leader>cbc",
    --         "<cmd>require('bloc').create_cubit('cubit_name', 'parent/folder/relative/path')<cr>",
    --         -- function ()
    --         --     require('bloc').create_cubit('cubit_name', 'parent/folder/relative/path')
    --         -- end,
    --         desc = "bloc cubit"
    --     }, {
    --         "<leader>cbb",
    --         "<cmd>require('bloc').create_bloc('bloc_name', 'parent/folder/relative/path')<cr>",
    --         -- function ()
    --         --     require('bloc').create_bloc('bloc_name', 'parent/folder/relative/path')
    --         -- end,
    --         desc = "bloc bloc"
    --     } },
    -- }
}
