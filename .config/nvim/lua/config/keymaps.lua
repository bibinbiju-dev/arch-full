-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>ha", ":Alpha<CR>", { desc = "Open Dashboard" })
vim.api.nvim_set_keymap('i', 'jj', '<Esc>', { noremap = true, silent = true })

-- Obsidian keybindings
vim.keymap.set("n", "<leader>on", ":ObsidianNew<CR>", { desc = "[O]bsidian [N]ew note" })
vim.keymap.set("n", "<leader>oo", ":ObsidianOpen<CR>", { desc = "[O]bsidian [O]pen in app" })
vim.keymap.set("n", "<leader>of", ":ObsidianQuickSwitch<CR>", { desc = "[O]bsidian [F]ind note" })
vim.keymap.set("n", "<leader>os", ":ObsidianSearch<CR>", { desc = "[O]bsidian [S]earch" })
vim.keymap.set("n", "<leader>od", ":ObsidianToday<CR>", { desc = "[O]bsidian [D]aily note" })
vim.keymap.set("n", "<leader>ot", ":ObsidianTomorrow<CR>", { desc = "[O]bsidian [T]omorrow" })
vim.keymap.set("n", "<leader>oy", ":ObsidianYesterday<CR>", { desc = "[O]bsidian [Y]esterday" })
vim.keymap.set("n", "<leader>ob", ":ObsidianBacklinks<CR>", { desc = "[O]bsidian [B]acklinks" })
vim.keymap.set("n", "<leader>or", ":ObsidianLinks<CR>", { desc = "[O]bsidian [R]elated links" })
