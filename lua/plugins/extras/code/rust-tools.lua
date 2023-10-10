return {
    "simrat39/rust-tools.nvim",
    optional = true,
    opts = {
        tools = {
            inlay_hints = {
                -- nvim >= 0.10 has native inlay hint support,
                -- so we don't need the rust-tools specific implementation any longer
                -- auto = not vim.fn.has('nvim-0.10')

                -- automatically set inlay hints (type hints)
                -- default: true
                auto = true,

                -- Only show inlay hints for the current line
                only_current_line = false,

                -- whether to show parameter hints with the inlay hints or not
                -- default: true
                show_parameter_hints = true,

                -- prefix for parameter hints
                -- default: "<-"
                parameter_hints_prefix = "<- ",

                -- prefix for all the other hints (type, chaining)
                -- default: "=>"
                other_hints_prefix = "=> ",

                -- whether to align to the length of the longest line in the file
                max_len_align = false,

                -- padding from the left if max_len_align is true
                max_len_align_padding = 1,

                -- whether to align to the extreme right or not
                right_align = false,

                -- padding from the right if right_align is true
                right_align_padding = 7,

                -- The color of the hints
                highlight = "Comment"
            }
        },
        -- dap = {
        --     adapter = {
        --         type = "executable",
        --         command = "lldb-vscode",
        --         name = "rt_lldb",
        --         args = { "a", "b" }
        --     },
        -- },
    },
    -- config = function()
    --     local tool = require("rust-tools")
    --     tool.dap.adapter.args = { "a", "b" }
    -- end
}
