-- flutter lsp
return {
    {
        'akinsho/flutter-tools.nvim',
        lazy = false,
        dependencies = {
            'nvim-lua/plenary.nvim',
            'stevearc/dressing.nvim', -- optional for vim.ui.select
        },
        -- config = true,
        opts = {
            fvm = true,
            ui = {
                border = "rounded",
                notification_style = "native",
            },
            decorations = {
                statusline = {
                    app_version = false,
                    device = true,
                },
            },
            widget_guides = {
                enabled = true,
            },
            closing_tags = {
                highlight = "ErrorMsg",
                prefix = "//",
                enabled = true,
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
    }
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
