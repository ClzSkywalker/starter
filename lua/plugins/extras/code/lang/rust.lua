-- -- https://github.com/mfussenegger/nvim-dap/wiki/C-C---Rust-(via--codelldb)
-- return {
--     "mfussenegger/nvim-dap",
--     config = function()
--         local dap = require('dap')
--         dap.configurations.rust = {
--             {
--                 name = "Debug",
--                 type = "codelldb",
--                 request = "launch",
--                 -- program = function()
--                 --     return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
--                 -- end,
--                 program = "./src/main.rs",
--                 cwd = '${workspaceFolder}',
--                 stopOnEntry = false,
--                 cargo={
--                     args={"build", "--bin=ang", "--package=ang"},
--                 },
--                 args = { "a","b" },
--                 -- env = { }
--             },
--         }
--     end
-- }

return {
}
