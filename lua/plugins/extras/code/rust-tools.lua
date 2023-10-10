return {
    "simrat39/rust-tools.nvim",
    -- optional = true,
    -- opts = {
    --     tools = {
    --         inlay_hints = {
    --             -- nvim >= 0.10 has native inlay hint support,
    --             -- so we don't need the rust-tools specific implementation any longer
    --             -- auto = not vim.fn.has('nvim-0.10')

    --             -- automatically set inlay hints (type hints)
    --             -- default: true
    --             auto = true,

    --             -- Only show inlay hints for the current line
    --             only_current_line = false,

    --             -- whether to show parameter hints with the inlay hints or not
    --             -- default: true
    --             show_parameter_hints = true,

    --             -- prefix for parameter hints
    --             -- default: "<-"
    --             parameter_hints_prefix = "<- ",

    --             -- prefix for all the other hints (type, chaining)
    --             -- default: "=>"
    --             other_hints_prefix = "=> ",

    --             -- whether to align to the length of the longest line in the file
    --             max_len_align = false,

    --             -- padding from the left if max_len_align is true
    --             max_len_align_padding = 1,

    --             -- whether to align to the extreme right or not
    --             right_align = false,

    --             -- padding from the right if right_align is true
    --             right_align_padding = 7,

    --             -- The color of the hints
    --             highlight = "Comment"
    --         }
    --     },
    --     dap = {
    --         adapter = {
    --             type = "executable",
    --             command = "lldb-vscode",
    --             name = "rt_lldb",
    --             -- args = { "a", "b" }
    --         },
    --     },
    -- },
    -- config = function()
    --     local tool = require("rust-tools")
    --     tool.dap.adapter.args = { "a", "b" }
    -- end
}


-- return {
--     "simrat39/rust-tools.nvim",
--     lazy = true,
--     opts = function()
--       local ok, mason_registry = pcall(require, "mason-registry")
--       local adapter ---@type any
--       if ok then
--         -- rust tools configuration for debugging support
--         local codelldb = mason_registry.get_package("codelldb")
--         local extension_path = codelldb:get_install_path() .. "/extension/"
--         local codelldb_path = extension_path .. "adapter/codelldb"
--         local liblldb_path = ""
--         if vim.loop.os_uname().sysname:find("Windows") then
--           liblldb_path = extension_path .. "lldb\\bin\\liblldb.dll"
--         elseif vim.fn.has("mac") == 1 then
--           liblldb_path = extension_path .. "lldb/lib/liblldb.dylib"
--         else
--           liblldb_path = extension_path .. "lldb/lib/liblldb.so"
--         end
--         adapter = require("rust-tools.dap").get_codelldb_adapter(codelldb_path, liblldb_path)
--       end
--       return {
--         dap = {
--           adapter = adapter,
--         },
--         tools = {
--           on_initialized = function()
--             vim.cmd([[
--                   augroup RustLSP
--                     autocmd CursorHold                      *.rs silent! lua vim.lsp.buf.document_highlight()
--                     autocmd CursorMoved,InsertEnter         *.rs silent! lua vim.lsp.buf.clear_references()
--                     autocmd BufEnter,CursorHold,InsertLeave *.rs silent! lua vim.lsp.codelens.refresh()
--                   augroup END
--                 ]])
--           end,
--         },
--       }
--     end,
--     config = function() end,
--   }