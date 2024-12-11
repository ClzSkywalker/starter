-- 语法分析
-- LSP 是一种用于编辑器和语言服务器之间进行通信的协议，它使得编辑器能够提供强大的代码补全、代码导航、代码重构等功能。
return {
    "neovim/nvim-lspconfig",
    opts = {
        servers = {
            rust_analyzer = {},
            gopls = {},
            bufls = {},
            jsonls = {},
            taplo = {},
            yamlls = {},
            -- dart = {
            -- }
        },
        -- diagnostics = {
        --     update_in_insert = true
        -- },
        inlay_hints = {
            enabled = true,
          },
    }
}