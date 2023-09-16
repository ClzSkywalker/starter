-- 交互式垂直滚动条和标志的Neovim插件
return {{
    "dstein64/nvim-scrollview",
    event = "BufReadPre",
    opts = {
        excluded_filetypes = {"alpha", "neo-tree"},
        current_only = true,
        winblend = 75
    }
}}
