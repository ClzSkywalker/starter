-- 语法分析
-- LSP 是一种用于编辑器和语言服务器之间进行通信的协议，它使得编辑器能够提供强大的代码补全、代码导航、代码重构等功能。
return {
    "neovim/nvim-lspconfig",
    opts = {
        autoformat = true,
        servers = {
            rust_analyzer = {},
            go = {},
            bufls={},
            jsonls={},
            taplo={},
            yamlls={}
        },
        diagnostics = {
            update_in_insert = true
        }
    }
}
