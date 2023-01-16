local k = vim.keymap

-- Switch between different windows by their direction
k.set("n", "<C-j>", "<C-w>j")
k.set("n", "<C-k>", "<C-w>k")
k.set("n", "<C-l>", "<C-w>l")
k.set("n", "<C-h>", "<C-w>h")

-- Maintain highlight after tabbing
k.set("v", "<", "<gv")
k.set("v", ">", ">gv")

-- clear search highlights
k.set("n", "<Esc>", "<Esc>:noh<CR>", { silent = true })

-- Toggle relative linenumber for all open buffers
k.set("n", "<leader>tln", ":windo set relativenumber!<CR>")

-- Move visual selection
k.set("v", "J", ":m '>+1<cr>gv=gv")
k.set("v", "K", ":m '<-2<cr>gv=gv")

-- Move between sections (blank lines)
k.set("n", "<C-j>", "}")
k.set("n", "<C-k>", "{")
