return {
    { import = "lazyvim.plugins.extras.lang.json" },
    { import = "lazyvim.plugins.extras.lang.go" },
    { import = "lazyvim.plugins.extras.lang.rust" },
    { import = "lazyvim.plugins.extras.lang.sql" },
    { import = "lazyvim.plugins.extras.lang.yaml" },
    { import = "lazyvim.plugins.extras.ai.copilot" },
    -- Better Yank/Paste
    { import = "lazyvim.plugins.extras.coding.yanky" },
    -- (),[],<> 
    { import = "lazyvim.plugins.extras.coding.mini-surround"},
    -- Increment and decrement numbers, dates, and more
    { import = "lazyvim.plugins.extras.editor.dial"},
    -- Incremental LSP renaming based on Neovim's command-preview feature
    { import = "lazyvim.plugins.extras.editor.inc-rename"},
    -- Fast and modern file picker
    { import = "lazyvim.plugins.extras.editor.snacks_picker"},
    -- Neotest support. Requires language specific adapters to be configured. (see lang extras)
    { import = "lazyvim.plugins.extras.test.core"},
    -- Language support for dotfiles
    { import = "lazyvim.plugins.extras.util.dot"},
    -- Highlight colors in your code. Also includes Tailwind CSS support.
    { import = "lazyvim.plugins.extras.util.mini-hipatterns"},
}