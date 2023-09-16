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
    -- opts = function(_, opts)
    --     local icons = require("lazyvim.config").icons
    --     require("symbols-outline").setup({
    --         width = 10,
    --         symbols = {
    --             File = {
    --                 icon = icons.kinds.File,
    --                 hl = "TSURI"
    --             },
    --             Module = {
    --                 icon = icons.kinds.Module,
    --                 hl = "TSNamespace"
    --             },
    --             Namespace = {
    --                 icon = icons.kinds.Namespace,
    --                 hl = "TSNamespace"
    --             },
    --             Package = {
    --                 icon = icons.kinds.Package,
    --                 hl = "TSNamespace"
    --             },
    --             Class = {
    --                 icon = icons.kinds.Class,
    --                 hl = "TSType"
    --             },
    --             Method = {
    --                 icon = icons.kinds.Method,
    --                 hl = "TSMethod"
    --             },
    --             Property = {
    --                 icon = icons.kinds.Property,
    --                 hl = "TSMethod"
    --             },
    --             Field = {
    --                 icon = icons.kinds.Field,
    --                 hl = "TSField"
    --             },
    --             Constructor = {
    --                 icon = icons.kinds.Constructor,
    --                 hl = "TSConstructor"
    --             },
    --             Enum = {
    --                 icon = icons.kinds.Enum,
    --                 hl = "TSType"
    --             },
    --             Interface = {
    --                 icon = icons.kinds.Interface,
    --                 hl = "TSType"
    --             },
    --             Function = {
    --                 icon = icons.kinds.Function,
    --                 hl = "TSFunction"
    --             },
    --             Variable = {
    --                 icon = icons.kinds.Variable,
    --                 hl = "TSConstant"
    --             },
    --             Constant = {
    --                 icon = icons.kinds.Constant,
    --                 hl = "TSConstant"
    --             },
    --             String = {
    --                 icon = icons.kinds.String,
    --                 hl = "TSString"
    --             },
    --             Number = {
    --                 icon = icons.kinds.Number,
    --                 hl = "TSNumber"
    --             },
    --             Boolean = {
    --                 icon = icons.kinds.Boolean,
    --                 hl = "TSBoolean"
    --             },
    --             Array = {
    --                 icon = icons.kinds.Array,
    --                 hl = "TSConstant"
    --             },
    --             Object = {
    --                 icon = icons.kinds.Object,
    --                 hl = "TSType"
    --             },
    --             Key = {
    --                 icon = icons.kinds.Key,
    --                 hl = "TSType"
    --             },
    --             Null = {
    --                 icon = icons.kinds.Null,
    --                 hl = "TSType"
    --             },
    --             EnumMember = {
    --                 icon = icons.kinds.EnumMember,
    --                 hl = "TSField"
    --             },
    --             Struct = {
    --                 icon = icons.kinds.Struct,
    --                 hl = "TSType"
    --             },
    --             Event = {
    --                 icon = icons.kinds.Event,
    --                 hl = "TSType"
    --             },
    --             Operator = {
    --                 icon = icons.kinds.Operator,
    --                 hl = "TSOperator"
    --             },
    --             TypeParameter = {
    --                 icon = icons.kinds.TypeParameter,
    --                 hl = "TSParameter"
    --             }
    --         }
    --     })
    -- end
}}
