return {
    -- ########## rose-pine.nvim ##########
    {
        "rose-pine/neovim",
        name = "rose-pine",
    },
    -- ########## tokyonight.nvim ##########
    {
        "folke/tokyonight.nvim",
        lazy = true,
        priority = 1000,
        opts = function()
            return {
                transparent = false,
            }
        end,
    },
    -- ########## gruvbox.nvim ##########
    { "ellisonleao/gruvbox.nvim" },

    {
        -- "folke/tokyonight.nvim",
        -- "craftzdog/solarized-osaka.nvim",
        "scottmckendry/cyberdream.nvim",
        -- "catppuccin/nvim",
        lazy = true,
        priority = 1000,
        opts = function()
            return {
                transparent = false,
            }
        end,
    },

    -- ########## Solarized Osaka ##########
    {
        "craftzdog/solarized-osaka.nvim",
        lazy = false,
        priority = 1000,
        opts = {
            transparent = false,
            terminal_colors = true,
            styles = {
                comments = { italic = true },
                keywords = { italic = true },
                functions = {},
                variables = {},
                sidebars = "dark",
                floats = "dark",
            },
            sidebars = { "qf", "help" },
            day_brightness = 0.3,
            hide_inactive_statusline = false,
            dim_inactive = false, -- dims inactive windows
            lualine_bold = false,
            ---@param colors ColorScheme
            on_colors = function(colors) end,

            ---@param highlights Highlights
            ---@param colors ColorScheme
            on_highlights = function(highlights, colors) end,
        },
    },

    -- ########## poimandres.nvim ##########
    {
        "olivercederborg/poimandres.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require("poimandres").setup({
                -- leave this setup function empty for default config
                -- or refer to the configuration section
                -- for configuration options
            })
        end,
    },
    -- ########## catppuccin.nvim ##########
    {
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
    },
    -- Nightfox
    {
        "EdenEast/nightfox.nvim",
        lazy = false,
        name = "nightfox",
        priority = 1000,
    },
}
