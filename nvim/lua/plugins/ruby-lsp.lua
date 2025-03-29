return {
    {
        "neovim/nvim-lspconfig",
        opts = {
            servers = {
                ruby_lsp = {
                    mason = false,
                    cmd = { vim.fn.expand("~/.rvm/gems/ruby-3.4.2/bin/ruby-lsp") },
                    -- cmd = { vim.fn.expand("~/.local/share/mise/installs/ruby/3.4.1/bin/ruby-lsp") },
                },
                svelte = {
                    keys = {
                        {
                            "<leader>co",
                            LazyVim.lsp.action["source.organizeImports"],
                            desc = "Organize Imports",
                        },
                    },
                    capabilities = {
                        workspace = {
                            didChangeWatchedFiles = vim.fn.has("nvim-0.10") == 0 and { dynamicRegistration = true },
                        },
                    },
                },
            },
        },
    },
}
