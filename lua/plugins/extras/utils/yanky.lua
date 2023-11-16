-- https://github.com/gbprod/yanky.nvim
return {
    {
        "gbprod/yanky.nvim",
        opts = {
            system_clipboard = {
                -- 修复复制粘贴特别慢的问题
                sync_with_ring = false,
            },
        },
    }
}
