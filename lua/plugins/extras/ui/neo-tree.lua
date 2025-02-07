-- Neovim插件，用于管理文件系统和其他树状结构
return {{
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
        dependencies = {"nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
                        "MunifTanjim/nui.nvim"},
        width = 40,
        enable_git_status = false,
        close_if_last_window = true, -- Close Neo-tree if it is the last window left in the tab
        filesystem = {
            follow_current_file = {
                enabled = true -- This will find and focus the file in the active buffer every
            }
            -- time the current file is changed while the tree is open.
            --   group_empty_dirs = true, -- when true, empty folders will be grouped together
            --   hijack_netrw_behavior = "open_default", -- netrw disabled, opening a directory opens neo-tree
        },
        buffers = {
            follow_current_file = {
                enabled = false, -- This will find and focus the file in the active buffer every time
                --              -- the current file is changed while the tree is open.
                leave_dirs_open = false -- `false` closes auto expanded dirs, such as with `:Neotree reveal`
            },
            group_empty_dirs = false, -- when true, empty folders will be grouped together
            show_unloaded = false
        }
    }
}}

