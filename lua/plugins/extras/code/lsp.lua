-- 语法分析
return {
    "neovim/nvim-lspconfig",
    opts = {
        autoformat = true,
        servers = {
            rust_analyzer = {},
            go = {}
        },
        diagnostics = {
            update_in_insert = true
        }
    }
}
