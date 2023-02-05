-- local n_keymap = function(lhs, rhs)
--     vim.api.nvim_set_keymap('n', lhs, rhs, { noremap = true, silent = true })
-- end
local function map(mode, lhs, rhs, opts)
    local options = { noremap=true, silent=true }
    if opts then
        options = vim.tbl_extend('force', options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end
vim.keymap.set("n", ";", ":")
vim.keymap.set("i", "jk", "<Esc>")
vim.keymap.set("n", "<leader>cd", ":cd %:p:h<CR> :pwd<CR>")
vim.keymap.set("n", "<leader>rn", ":set invrelativenumber<CR>")

map("n", "<S-]>", ";")
map("n", "<S-h>", ":BufferLineCyclePrev<CR>")
map("n", "<S-l>", ":BufferLineCycleNext<CR>")
map("n", "<silent>be", ":BufferLineSortByExtension<CR>")
map("n", "<silent>bd", ":BufferLineSortByDirectory<CR>")
map("n", "<silent>", "gb :BufferLinePick<CR>")
map("n", "<silent>", "gD :BufferLinePickClose<CR>")

-- NERDTree
vim.keymap.set("n", "<C-n>", ":NERDTreeToggle $HOME <CR>")
vim.keymap.set("n", "<leader>n", ":NERDTreeFind <CR>")
vim.keymap.set("n", "<leader>nc", ":NERDTreeCWD <CR>")
vim.keymap.set("n", "<leader>nm", ":NERDTreeMirror <CR>")


-- move line or visually selected block - alt+j/k
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv")
vim.keymap.set("i", "<A-j>", "<Esc>:m .+1<CR>==gi")
vim.keymap.set("i", "<A-k>", "<Esc>:m .-2<CR>==gi")
-- move split panes to left/bottom/top/right
vim.keymap.set("n", "<A-h>", "<C-W>H")
vim.keymap.set("n", "<A-j>", "<C-W>J")
vim.keymap.set("n", "<A-k>", "<C-W>K")
vim.keymap.set("n", "<A-l>", "<C-W>L")
 -- move between panes to left/bottom/top/right
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- Press i to enter insert mode, and ii to exit insert mode.
vim.keymap.set("i", "ii", "<Esc>")

-- copies filepath to clipboard by pressing yf
vim.cmd("nnoremap <silent> yf :let @+=expand('%:p')<CR>")
-- copies pwd to clipboard: command yd
vim.cmd("noremap <silent> yd :let @+=expand('%:p:h')<CR>")
-- paste and keep contents of default register
--vim.keymap.set("x", "<leader>p", '"_dP')

