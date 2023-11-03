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
        -- config = true,
        opts = {
            flutter_path="/opt/flutter/bin/flutter",
            fvm = false,
            widget_guides = {
                enabled = true,
            },
            closing_tags = {
                highlight = "ErrorMsg",
                prefix = "//",
                enabled = true,
            },
            ui = {
                border = "rounded",
                notification_style = "plugin",
            },
            decorations = {
                statusline = {
                    app_version = false,
                    device = true,
                },
            },
            lsp = {
                color = {
                    enabled = false,
                    background = false,
                    foreground = false,
                    virtual_text = true,
                    virtual_text_str = "■",
                },
                settings = {
                    showTodos = true,
                    completeFunctionCalls = true,
                    enableSnippets = true,
                },
            },
            debugger = {
                enabled = true,
                run_via_dap = true,
            },
        },
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
