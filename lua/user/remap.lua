vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("i", "jk", "<esc>")

-- Move multiple lines in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Take line below and append to line above
-- while keeping cursor in place
vim.keymap.set("n", "J", "mzJ`z")
-- Allow half page jump while keeping cursor in middle
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- Allow search terms to stay in middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Allows paste buffer to stay without replacing contents of
-- paste buffer
-- foobarbarbarbarbarbarfoofoofoofoofoofoo
-- highlight, yank, <leader>p...p..p..p
-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])
-- leader y will copy to system clipboard for pasting
-- outside of vim
-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])


vim.keymap.set("n", "q", "<nop>")
--vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- quickfix navigation
--vim.keymap.set("n", "<c-k>", "<cmd>cnext<cr>zz")
--vim.keymap.set("n", "<c-j>", "<cmd>cprev<cr>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<cr>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<cr>zz")

-- replace word that cursor is on
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
-- change to executable and execute
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- terminal stuff
-- assuming youre in a tmux session
vim.keymap.set("n", "<C-h>", "<cmd>lua require(\"tmux\").move_left()<cr>")
vim.keymap.set("n", "<C-j>", "<cmd>lua require(\"tmux\").move_bottom()<cr>")
vim.keymap.set("n", "<C-k>", "<cmd>lua require(\"tmux\").move_top()<cr>")
vim.keymap.set("n", "<C-l>", "<cmd>lua require(\"tmux\").move_right()<cr>")

