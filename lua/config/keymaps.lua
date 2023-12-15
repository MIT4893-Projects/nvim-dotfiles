-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap

-- Home/End bindings
keymap.set("n", "<home>", "_")
keymap.set("n", "<end>", "g$")
keymap.set("n", "u", "_")
keymap.set("n", "o", "g$")
keymap.set("n", "<C-,>", ":go 1<return>")
keymap.set("n", "<C-.>", "G")
keymap.set("n", "<C-home>", ":go 1<return>")
keymap.set("n", "<C-end>", "G")
keymap.set("i", "<home>", "<esc>_i")
keymap.set("i", "<C-home>", "<esc>:go 1<return>i")

-- Move lines
keymap.set("n", "<M-up>", "ddkP")
keymap.set("n", "<M-down>", "ddp")
keymap.set("v", "<M-up>", "xkP`[V`]")
keymap.set("v", "<M-up>", "xk`[V`]`")

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")
keymap.set("i", "<C-a>", "<esc>gg<S-v>G")

-- Delete a word
keymap.set("i", "<C-bs>", "<C-w>")
keymap.set("i", "<C-del>", "<esc>dei")

-- Save
keymap.set("i", "<C-s>", "<esc>:w<return>li")
keymap.set("n", "<C-s>", ":w<return>")

-- Undo/redo
keymap.set("n", "<C-z>", ":undo<return>")
keymap.set("n", "<C-y>", ":redo<return>")
keymap.set("i", "<C-z>", "<esc>:undo<return>i")
keymap.set("i", "<C-y>", "<esc>:redo<return>i")

-- Tab controls
keymap.set("n", "tn", ":tabnew ")
keymap.set("n", "tm", ":tabnew<return>")
keymap.set("n", "tk", ":tabnext<return>")
keymap.set("n", "tj", ":tabprev<return>")
keymap.set("n", "tw", ":tabclose<return>")
