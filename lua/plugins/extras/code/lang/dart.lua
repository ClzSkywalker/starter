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
    dap.adapters.dart = {
        name="flutter debug",
        type = "executable",
        command = "flutter",
        args = { "debug_adapter" },
    }
    dap.configurations.dart = {
        {
            type = "dart",
            request = "launch",
            name = "Launch Dart Program",
            program = "${file}",
            cwd = "${workspaceFolder}",
        },
    }
end

dap_go()

return {
    "leoluz/nvim-dap-go",
    config = false,
}
