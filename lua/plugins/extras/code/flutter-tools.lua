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
    {
        'ClzSkywalker/bloc.nvim',
        keys = { {
            "<leader>cb",
            desc = "flutter bloc"
        }, {
            "<leader>cbc",
            function()
                local state = require("neo-tree.sources.manager").get_state("filesystem")
                local node = state.tree:get_node()
                local inputstr = vim.fn.input("Cubit Name:", "")
                require('bloc').create_cubit(inputstr, node.path .. '/')
            end,
            desc = "bloc cubit"
        }, {
            "<leader>cbb",
            function()
                local state = require("neo-tree.sources.manager").get_state("filesystem")
                local node = state.tree:get_node()
                local inputstr = vim.fn.input("Bloc Name:", "")
                require('bloc').create_bloc(inputstr, node.path .. '/')
            end,
            desc = "bloc bloc"
        } },
    }
}
