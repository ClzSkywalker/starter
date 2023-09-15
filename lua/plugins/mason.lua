-- Neovim的便携式软件包管理器，可在Neovim运行的任何地方运行。轻松安装和管理LSP服务器、DAP服务器、linter和格式化程序
return {
    "williamboman/mason.nvim",
    opts = {
      ui = {
        icons = {
          package_installed = "󰗠 ",
          package_pending = " ",
          package_uninstalled = " ",
        },
      },
    },
  }