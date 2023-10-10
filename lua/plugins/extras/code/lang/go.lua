return {
    "mfussenegger/nvim-dap",
    config = function()
        local dap = require('dap')
        dap.configurations.go = {
            {
                type = "delve",
                name = "Debug",
                request = "launch",
                program = "./main.go",
                args = { "server" },
                env = { ["GIN_MODE"]="test", ["LOWCODE_MODE"]="test" }
            },
            {
                type = "delve",
                name = "Migrate up",
                request = "launch",
                program = "./main.go",
                args = { "migrate","up" },
                env = { ["GIN_MODE"]="test", ["LOWCODE_MODE"]="test" }
            },
            {
                type = "delve",
                name = "Migrate down",
                request = "launch",
                program = "./main.go",
                args = { "migrate","down" },
                env = { ["GIN_MODE"]="test", ["LOWCODE_MODE"]="test" }
            },
        }
    end

}
