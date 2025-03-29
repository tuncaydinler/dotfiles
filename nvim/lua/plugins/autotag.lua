return {
    {
        "nvim-treesitter/nvim-treesitter",
        dependencies = {
            { "windwp/nvim-ts-autotag" },
        },
        event = { "BufReadPre" },
        opts = function(_, opts)
            vim.list_extend(opts.ensure_installed, {
                "c",
                "cpp",
                "fish",
                "rust",
                "svelte",
            })
            return vim.tbl_deep_extend("force", opts, {
                autotag = {
                    enable = true,
                },
            })
        end,
    },
}
