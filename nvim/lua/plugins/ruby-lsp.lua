return {
    {
        "neovim/nvim-lspconfig",
        opts = {
            servers = {
                nil_ls = {},
                gopls = {
                    settings = {
                        gopls = {
                            gofumpt = true,
                            codelenses = {
                                gc_details = false,
                                generate = true,
                                regenerate_cgo = true,
                                run_govulncheck = true,
                                test = true,
                                tidy = true,
                                upgrade_dependency = true,
                                vendor = true,
                            },
                            hints = {
                                assignVariableTypes = true,
                                compositeLiteralFields = true,
                                compositeLiteralTypes = true,
                                constantValues = true,
                                functionTypeParameters = true,
                                parameterNames = true,
                                rangeVariableTypes = true,
                            },
                            analyses = {
                                nilness = true,
                                unusedparams = true,
                                unusedwrite = true,
                                useany = true,
                            },
                            usePlaceholders = true,
                            completeUnimported = true,
                            staticcheck = true,
                            directoryFilters = { "-.git", "-.vscode", "-.idea", "-.vscode-test", "-node_modules" },
                            semanticTokens = true,
                        },
                    },
                    setup = {
                        gopls = function(_, opts)
                            -- workaround for gopls not supporting semanticTokensProvider
                            -- https://github.com/golang/go/issues/54531#issuecomment-1464982242
                            Snacks.util.lsp.on({ name = "gopls" }, function(_, client)
                                if not client.server_capabilities.semanticTokensProvider then
                                    local semantic = client.config.capabilities.textDocument.semanticTokens
                                    client.server_capabilities.semanticTokensProvider = {
                                        full = true,
                                        legend = {
                                            tokenTypes = semantic.tokenTypes,
                                            tokenModifiers = semantic.tokenModifiers,
                                        },
                                        range = true,
                                    }
                                end
                            end)
                            -- end workaround
                        end,
                    },
                },
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
