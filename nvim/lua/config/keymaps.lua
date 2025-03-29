-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps hereby
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Keybinds
keymap.set("n", "<tab>", ":bufferlinemovenext<Return>", opts)
