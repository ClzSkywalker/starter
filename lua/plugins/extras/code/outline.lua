return {{
    "simrat39/symbols-outline.nvim",
    cmd = "SymbolsOutline",
    keys = {{
        "<leader>cs",
        "<cmd>SymbolsOutline<cr>",
        desc = "Symbols Outline"
    }},
    opts = {
        width = 15,
        symbols = {
            File = {
                icon = "",
                hl = "@text.uri"
            },
            Module = {
                icon = "",
                hl = "@namespace"
            },
            Namespace = {
                icon = "",
                hl = "@namespace"
            },
            Package = {
                icon = "",
                hl = "@namespace"
            },
            Class = {
                icon = "𝓒",
                hl = "@type"
            },
            Method = {
                icon = "ƒ",
                hl = "@method"
            },
            Property = {
                icon = "",
                hl = "@method"
            },
            Field = {
                icon = "",
                hl = "@field"
            },
            Constructor = {
                icon = "",
                hl = "@constructor"
            },
            Enum = {
                icon = "ℰ",
                hl = "@type"
            },
            Interface = {
                icon = "ﰮ",
                hl = "@type"
            },
            Function = {
                icon = "",
                hl = "@function"
            },
            Variable = {
                icon = "",
                hl = "@constant"
            },
            Constant = {
                icon = "",
                hl = "@constant"
            },
            String = {
                icon = "𝓐",
                hl = "@string"
            },
            Number = {
                icon = "#",
                hl = "@number"
            },
            Boolean = {
                icon = "⊨",
                hl = "@boolean"
            },
            Array = {
                icon = "",
                hl = "@constant"
            },
            Object = {
                icon = "⦿",
                hl = "@type"
            },
            Key = {
                icon = "🔐",
                hl = "@type"
            },
            Null = {
                icon = "NULL",
                hl = "@type"
            },
            EnumMember = {
                icon = "",
                hl = "@field"
            },
            Struct = {
                icon = "𝓢",
                hl = "@type"
            },
            Event = {
                icon = "🗲",
                hl = "@type"
            },
            Operator = {
                icon = "+",
                hl = "@operator"
            },
            TypeParameter = {
                icon = "𝙏",
                hl = "@parameter"
            },
            Component = {
                icon = "",
                hl = "@function"
            },
            Fragment = {
                icon = "",
                hl = "@constant"
            }
        }
    }
}}
