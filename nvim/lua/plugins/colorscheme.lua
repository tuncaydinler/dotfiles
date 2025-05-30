-- return {
--     -- "folke/tokyonight.nvim",
--     "craftzdog/solarized-osaka.nvim",
--     -- "scottmckendry/cyberdream.nvim",
--     -- "catppuccin/nvim",
--     lazy = true,
--     priority = 1000,
--     opts = function()
--         return {
--             transparent = true,
--         }
--     end,
-- }
return {
    { -- was missing this
        "catppuccin/nvim",
        lazy = true,
        name = "catppuccin",
        priority = 1000,
        opts = {
            transparent_background = false,
            integrations = {
                aerial = true,
                alpha = true,
                cmp = true,
                dashboard = true,
                flash = true,
                gitsigns = true,
                headlines = true,
                illuminate = true,
                indent_blankline = { enabled = true },
                leap = true,
                lsp_trouble = true,
                mason = true,
                markdown = true,
                mini = true,
                native_lsp = {
                    enabled = true,
                    underlines = {
                        errors = { "undercurl" },
                        hints = { "undercurl" },
                        warnings = { "undercurl" },
                        information = { "undercurl" },
                    },
                },
                navic = { enabled = true, custom_bg = "lualine" },
                neotest = true,
                neotree = true,
                noice = true,
                semantic_tokens = true,
                telescope = true,
                treesitter = true,
                treesitter_context = true,
                which_key = true,
            },
        },
    }, -- and this
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "catppuccin-mocha",
        },
    },
}
