-- 代码注释插件，针对类，方法添加注释
return {
    "danymat/neogen",
    -- event = 'BufEnter',
    dependencies = "nvim-treesitter/nvim-treesitter",
    config=true,
    keys={
        {"<Leader>cc","<cmd>Neogen<cr>",desc = "code comment"}
    },
}
