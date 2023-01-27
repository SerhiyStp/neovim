-- Reserve space for diagnostic icons
vim.opt.signcolumn = 'yes'

-- Learn the keybindings, see :help lsp-zero-keybindings
-- Learn to configure LSP servers, see :help lsp-zero-api-showcase
local lsp = require('lsp-zero')
lsp.preset('recommended')

lsp.ensure_installed({
   -- Replace these with whatever servers you want to install
   'fortls',
   'pyright'
   -- 'sumneko_lua',
})


-- Pass arguments to a language server
lsp.configure('fortls', {
   on_attach = function(client, bufnr)
       print('hello fortls')
   end,
   settings = {
       completions = {
           completeFunctionCalls = true
       }
   }
})

-- (Optional) Configure lua language server for neovim
lsp.nvim_workspace()

lsp.setup()
