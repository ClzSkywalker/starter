-- 用于与NeoVim中的测试交互的可扩展框架
return {{"nvim-neotest/neotest-go"}, {"rouge8/neotest-rust"}, {
    "nvim-neotest/neotest",
    -- event = 'BufEnter',
    dependencies = {"nvim-lua/plenary.nvim", "nvim-treesitter/nvim-treesitter", "antoinemadec/FixCursorHold.nvim"},
    opts = {
        adapters = {
            ["neotest-go"] = {},
            ["neotest-rust"] = {}
        }
    }
}}
