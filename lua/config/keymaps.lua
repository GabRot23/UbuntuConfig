local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Esc
keymap.set({ "i" }, "jk", "<Esc>", { desc = "Escape" })

-- Do things without affecting the registers
keymap.set("n", "x", '"_x', { desc = "Delete without affecting the register" })
keymap.set("n", "<Leader>p", '"0p', { desc = "Paste from 0 register" })
keymap.set("n", "<Leader>P", '"0P', { desc = "Paste from 0 register" })
keymap.set("v", "<Leader>p", '"0p', { desc = "Paste from 0 register" })
keymap.set("n", "<Leader>c", '"_c', { desc = "Change without affecting the register" })
keymap.set("n", "<Leader>C", '"_C', { desc = "Change without affecting the register" })
keymap.set("v", "<Leader>c", '"_c', { desc = "Change without affecting the register" })
keymap.set("v", "<Leader>C", '"_C', { desc = "Change without affecting the register" })
keymap.set("n", "<Leader>d", '"_d', { desc = "Delete without affecting the register" })
keymap.set("n", "<Leader>D", '"_D', { desc = "Delete without affecting the register" })
keymap.set("v", "<Leader>d", '"_d', { desc = "Delete without affecting the register" })
keymap.set("v", "<Leader>D", '"_D', { desc = "Delete without affecting the register" })

-- Increment/decrement
keymap.set("n", "+", "<C-a>", { desc = "Increment" })
keymap.set("n", "-", "<C-x>", { desc = "Decrement" })

-- Delete a word backwards
keymap.set("n", "dw", 'vb"_d', { desc = "Delete word backwards" })

-- From theprimeagen
keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "Go to Explorer File" })

keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selected lines down" })
keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selected lines up" })

keymap.set("n", "J", "mzJ`z", { desc = "Join lines" })
keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Move down half page" })
keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Move up half page" })
keymap.set("n", "n", "nzzzv", { desc = "Center next search result" })
keymap.set("n", "N", "Nzzzv", { desc = "Center previous search result" })

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G", { desc = "Select all" })

-- Disable continuations
keymap.set("n", "<Leader>o", "o<Esc>^Da", { noremap = true, silent = true, desc = "Insert new line below" })
keymap.set("n", "<Leader>O", "O<Esc>^Da", { noremap = true, silent = true, desc = "Insert new line above" })

-- Jumplist
keymap.set("n", "<C-m>", "<C-i>", { noremap = true, silent = true, desc = "Jump forward" })

-- -- New tab
-- keymap.set("n", "te", ":tabedit")
-- keymap.set("n", "<tab>", ":tabnext<Return>", opts)
-- keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)

-- Split window
keymap.set("n", "ss", ":split<Return>", { noremap = true, silent = true, desc = "Split windows horizontally" })
keymap.set("n", "sv", ":vsplit<Return>", { noremap = true, silent = true, desc = "Split windows vertically" })
-- Move window
keymap.set("n", "sh", "<C-w>h", { desc = "Move windows right" })
keymap.set("n", "sk", "<C-w>k", { desc = "Move windows up" })
keymap.set("n", "sj", "<C-w>j", { desc = "Move windows down" })
keymap.set("n", "sl", "<C-w>l", { desc = "Move windows left" })

-- Resize window
keymap.set("n", "<C-w><left>", "<C-w><", { desc = "Resize window left" })
keymap.set("n", "<C-w><right>", "<C-w>>", { desc = "Resize window right" })
keymap.set("n", "<C-w><up>", "<C-w>+", { desc = "Resize window up" })
keymap.set("n", "<C-w><down>", "<C-w>-", { desc = "Resize window down" })

-- Diagnostics
keymap.set("n", "<C-j>", function()
  vim.diagnostic.goto_next({ severity = 1 })
end, { noremap = true, silent = true, desc = "Go to next error" })

keymap.set("n", "<C-k>", function()
  vim.diagnostic.goto_prev()
end, { noremap = true, silent = true, desc = "Go to previous error" })

-- Copilot
-- Activate or deactivate Copilot
