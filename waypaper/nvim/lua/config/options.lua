-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g.lazyvim_picker = "fzf"

local api = vim.api

-- Neovim açılınca big-font profiline geç
api.nvim_create_autocmd("VimEnter", {
    callback = function()
        -- printf '\e]50;SetProfile=big-font\a'
        vim.fn.system({ "printf", "\\e]50;SetProfile=big-font\\a" })
    end,
})

-- Neovim kapanırken default profiline geri dön
api.nvim_create_autocmd("VimLeavePre", {
    callback = function()
        -- printf '\e]50;SetProfile=default\a'
        vim.fn.system({ "printf", "\\e]50;SetProfile=default\\a" })
    end,
})
