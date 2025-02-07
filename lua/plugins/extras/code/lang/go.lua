local function input_args()
    -- 输入参数
    local inputstr = vim.fn.input("CommandLine Args:", "")
    local params = {}
    for param in string.gmatch(inputstr, "[^%s]+") do
        table.insert(params, param)
    end
    -- 进行构建
    return params
end

function dap_go()
    local dap = require('dap')
    dap.configurations.go = {
        {
            name = "Debug Args",
            type = "delve",
            request = "launch",
            program = "./main.go",
            args = input_args
        },
        {
            name = "Cy Debug",
            type = "delve",
            request = "launch",
            program = "./main.go",
            args = { "server" },
            env = { ["GIN_MODE"] = "test", ["LOWCODE_MODE"] = "test" }
        },
        {
            name = "Cy Migrate up",
            type = "delve",

            request = "launch",
            program = "./main.go",
            args = { "migrate", "up" },
            env = { ["GIN_MODE"] = "test", ["LOWCODE_MODE"] = "test" }
        },
        {
            name = "Cy Migrate down",
            type = "delve",

            request = "launch",
            program = "./main.go",
            args = { "migrate", "down" },
            env = { ["GIN_MODE"] = "test", ["LOWCODE_MODE"] = "test" }
        },
    }
end

dap_go()

return {
    "leoluz/nvim-dap-go",
    config = false,
}
