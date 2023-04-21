vim.g.mapleader = " "

local opts = { noremap = true, silent = true }
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

-- Buffer navigation
-- For the <C-h> option, need to use ^H for some reason because <C-h> outputs ^H
-- 
vim.keymap.set("n", "^H", "<C-w>h", opts)
vim.keymap.set("n", "<C-h>", "<C-w>h", opts)
vim.keymap.set("n", "<C-j>", "<C-w>j", opts)
vim.keymap.set("n", "<C-k>", "<C-w>k", opts)
vim.keymap.set("n", "<C-l>", "<C-w>l", opts)

-- Resize window
vim.keymap.set("n", "<M-k>", ":resize -2<CR>", opts)
vim.keymap.set("n", "<M-j>", ":resize +2<CR>", opts)
vim.keymap.set("n", "<M-h>", ":vertical resize -2<CR>", opts)
vim.keymap.set("n", "<M-l>", ":vertical resize +2<CR>", opts)

-- Terminal stuff
vim.keymap.set("n", "<C-x>", ":vsplit term://zsh<CR>")

-- Tab navigation
vim.keymap.set("n", "<A-,>", ":tabprevious<CR>")
vim.keymap.set("n", "<A-.>", ":tabNext<CR>")
-- function for opening project in tab?
--vim.keymap.set("n", "<A-n>", ":tabPrevious<CR>")
