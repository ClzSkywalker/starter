-- https://github.com/mfussenegger/nvim-dap/wiki/C-C---Rust-(via--codelldb)
-- 获取执行路径
local function target_config()
    -- vim.fn.jobstart('cargo build')
    -- vim.fn.system "cargo build"
    local metadata_json = vim.fn.system "cargo metadata --format-version 1 --no-deps"
    local metadata = vim.fn.json_decode(metadata_json)
    local target_name = metadata.packages[1].targets[1].name
    local target_dir = metadata.target_directory
    return target_dir .. "/debug/" .. target_name
end

local function input_args()
    -- 输入参数
    local inputstr = vim.fn.input("CommandLine Args:", "")
    local params = {}
    for param in string.gmatch(inputstr, "[^%s]+") do
        table.insert(params, param)
    end
    -- 进行构建
    vim.notify("cargo building...")
    vim.fn.system "cargo build"
    vim.notify("cargo finished!")

    return params
end

function dap_rust()
    local dap = require('dap')
    dap.configurations.rust = {
        {
            name = "Launch",
            type = "codelldb",
            request = "launch",
            program = target_config,
            args = input_args,
        },
    }
end

dap_rust()

return {
}
