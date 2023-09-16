-- neovim nvim-treesitter 是一个 Neovim 的插件，它利用了 Treesitter 技术来提供更强大的语法分析和语法高亮功能。Treesitter 是一个基于语法树的解析器生成器，可以解析各种编程语言的代码，并提供了一种更准确和可靠的方式来理解代码的结构。
-- nvim-treesitter 插件可以帮助你在 Neovim 中获取更精确的代码语法高亮、代码折叠、自动缩进和代码导航等功能。它支持多种编程语言，并且可以通过配置文件进行自定义设置，以适应不同的开发环境和个人偏好。
-- 通过 nvim-treesitter，你可以更好地理解和编辑代码，减少语法错误和调试时间，提高代码编写的效率和质量。
return {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
        vim.list_extend(opts.ensure_installed, {"comment", "rust", "go", "http"})
    end
}
