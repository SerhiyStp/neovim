--print("customizing")
require("custom.packer")
require("custom.set")
require("custom.remap")
vim.cmd([[ 
    if exists(':GuiFont')
        GuiFont! Hack NFM
    endif
]])

-- vim.cmd([[ 
--     if exists(':GuiFont')
--         "GuiFont! RobotoMono NFM:h12
--         GuiFont! Hack NFM
--     endif
-- ]])
-- vim.cmd([[
-- function! s:write_server_name() abort
--   let nvim_server_file = (has('win32') ? $TEMP : '/tmp') . '/vimtexserver.txt'
--   call writefile([v:servername], nvim_server_file)
-- endfunction
--
-- augroup vimtex_common
--   autocmd!
--   autocmd FileType tex call s:write_server_name()
-- augroup END
-- ]])
