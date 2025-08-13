-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps hereby
local keymap = vim.keymap
local opts = {
    noremap = true,
    silent = true,
}

-- Switch other tabs
keymap.set("n", "<tab>", "<cmd>bnext<cr>", opts)
keymap.set("v", "<tab>", "<cmd>bnext<cr>", opts)

-- Do things without affecting the registers
keymap.set("n", "x", '"_x')
keymap.set("n", "<Leader>p", '"0p')
keymap.set("n", "<Leader>P", '"0P')
keymap.set("v", "<Leader>p", '"0p')
keymap.set("n", "<Leader>c", '"_c')
keymap.set("n", "<Leader>C", '"_C')
keymap.set("v", "<Leader>c", '"_c')
keymap.set("v", "<Leader>C", '"_C')
keymap.set("n", "<Leader>d", '"_d')
keymap.set("n", "<Leader>D", '"_D')
keymap.set("v", "<Leader>d", '"_d')
keymap.set("v", "<Leader>D", '"_D')

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Delete a word backwards
keymap.set("n", "dw", 'vb"_d')

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)
keymap.set("n", "sc", "<cmd>close<cr>", {
    desc = "Kapat: Current split window",
})
-- Move window
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")

-- Resize window
keymap.set("n", "<leader><left>", "<C-w>>")
keymap.set("n", "<leader><right>", "<C-w><")
keymap.set("n", "<leader><up>", "<C-w>+")
keymap.set("n", "<leader><down>", "<C-w>-")

keymap.set("n", "<C-j>", function()
    vim.diagnostic.jump({ count = 1, float = true })
end, opts)

-- Previous diagnostic (float ile)
keymap.set("n", "<C-k>", function()
    vim.diagnostic.jump({ count = -1, float = true })
end, opts)

-- keymap.set("n", "<leader>r", function()
--     require("craftzdog.hsl").replaceHexWithHSL()
-- end)

keymap.set("n", "<leader>i", function()
    require("craftzdog.lsp").toggleInlayHints()
end)

vim.api.nvim_create_user_command("ToggleAutoformat", function()
    require("craftzdog.lsp").toggleAutoformat()
end, {})
-- keymap.set("n", "<leader><tab><tab>", "<cmd>bnext<cr>", {
--     desc = "Next Buffer (override New Tab)",
-- })
