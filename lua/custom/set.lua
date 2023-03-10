--vim.opt.guicursor = 

vim.opt.nu = true
--vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true
vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

--vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"
--vim.opt.lazyredraw = true

vim.g.mapleader = ","
vim.g.maplocalleader = ","


vim.g.NERDTreeDirArrows = 1
vim.g.NERDTreeMinimalUI = 1
vim.g.NERDTreeDirArrowExpandable = '▸'
vim.g.NERDTreeDirArrowCollapsible = '▾'
--vim.opt.NERDTreeIgnore = {'\.aux$', '\.bbl$', '\.blg$', '\.synctex$', '\.fdb_latex$', '\.fls$', '\.asv$', '\~$', '\.pyc$', 'tags', '\.mat$'}
vim.cmd([[
        let NERDTreeIgnore=['\.aux$', '\.bbl$', '\.blg$', '\.synctex$', '\.fdb_latex$', '\.fls$', '\.asv$', '\~$', '\.pyc$', 'tags', '\.mat$']
    ]])

vim.cmd([[ 
    let g:vimtex_quickfix_ignore_filters = [
    \ 'Overfull',
    \]
]])
vim.cmd([[let g:vimtex_quickfix_open_on_warning = 0]])
vim.cmd([[let g:vimtex_quickfix_autoclose_after_keystrokes = 2]])
