-- ########## tokyonight.nvim ##########
-- return {
--     "folke/tokyonight.nvim",
--     -- "craftzdog/solarized-osaka.nvim",
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

-- ########## Solarized Osaka ##########
-- return {
--     {
--         "craftzdog/solarized-osaka.nvim",
--         lazy = true,
--         priority = 1000,
--         opts = function()
--             return {
--                 transparent = true,
--             }
--         end,
--     },
-- }

return {
    {
        "craftzdog/solarized-osaka.nvim",
        lazy = false,
        priority = 1000,
        opts = {
            -- 1. Genel şeffaflık: arka plan rengini kaldırır
            transparent = false, -- :contentReference[oaicite:0]{index=0}
            terminal_colors = true, -- terminalde de tema renklerini uygula :contentReference[oaicite:1]{index=1}

            -- 2. Söz dizimi stilleri
            styles = {
                comments = { italic = true }, -- yorumları italik yap
                keywords = { italic = true }, -- anahtar kelimeler italik
                functions = {}, -- fonksiyonlar normal
                variables = {}, -- değişkenler normal
                sidebars = "transparent", -- kenar çubuklarında koyu arka plan
                floats = "transparent", -- açılır pencereleri şeffaf yap :contentReference[oaicite:2]{index=2}
            },

            -- 3. Kenar çubukları (qf, help, etc.) şeması
            sidebars = { "qf", "help", "terminal", "packer" },

            -- 4. Gün parlaklığı (0–1 arası)
            day_brightness = 0.9,

            -- 5. Durum satırları ve etkinlik
            hide_inactive_statusline = false,
            dim_inactive = false,
            lualine_bold = false,

            -- 6. Renk ve highlight geçersiz kılmaları
            on_colors = function(colors)
                -- Örneğin base02’yi biraz daha koyu yapabilirsiniz
                colors.base02 = "#073642"
            end,

            on_highlights = function(hl, colors)
                -- Dashboard (alpha-nvim) başlıkları şeffaf olsun
                hl.DashboardHeader = { fg = colors.yellow, bg = "none", bold = true }
                hl.DashboardButtons = { fg = colors.blue, bg = "none" }
                hl.DashboardFooter = { fg = colors.comment, bg = "none", italic = true }

                -- Telescope pencerelerini de şeffaf yapmak isterseniz
                hl.TelescopePrompt = { bg = "none" }
                hl.TelescopePromptBorder = { bg = "none" }
                hl.TelescopeResults = { bg = "none" }
                hl.TelescopeResultsBorder = { bg = "none" }
                hl.TelescopePreview = { bg = "none" }
                hl.TelescopePreviewBorder = { bg = "none" }
            end,
        },

        -- 7. Tema’yı yükle
    },
}

-- ########## poimandres.nvim ##########
-- return {
--     "olivercederborg/poimandres.nvim",
--     lazy = false,
--     priority = 1000,
--     config = function()
--         require("poimandres").setup({
--             -- leave this setup function empty for default config
--             -- or refer to the configuration section
--             -- for configuration options
--         })
--     end,
--
--     -- optionally set the colorscheme within lazy config
--     init = function()
--         vim.cmd("colorscheme poimandres")
--     end,
-- }
-- ########## catppuccin.nvim ##########
-- return {
--     { -- was missing this
--         "catppuccin/nvim",
--         lazy = true,
--         name = "catppuccin",
--         priority = 1000,
--         opts = {
--             transparent_background = true,
--             integrations = {
--                 aerial = true,
--                 alpha = true,
--                 cmp = true,
--                 dashboard = true,
--                 flash = true,
--                 gitsigns = true,
--                 headlines = true,
--                 illuminate = true,
--                 indent_blankline = { enabled = true },
--                 leap = true,
--                 lsp_trouble = true,
--                 mason = true,
--                 markdown = true,
--                 mini = true,
--                 native_lsp = {
--                     enabled = true,
--                     underlines = {
--                         errors = { "undercurl" },
--                         hints = { "undercurl" },
--                         warnings = { "undercurl" },
--                         information = { "undercurl" },
--                     },
--                 },
--                 navic = { enabled = true, custom_bg = "lualine" },
--                 neotest = true,
--                 neotree = true,
--                 noice = true,
--                 semantic_tokens = true,
--                 telescope = true,
--                 treesitter = true,
--                 treesitter_context = true,
--                 which_key = true,
--             },
--         },
--     }, -- and this
--     {
--         "LazyVim/LazyVim",
--         opts = {
--             colorscheme = "catppuccin-mocha",
--         },
--     },
-- }
