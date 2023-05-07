local status, saga = pcall(require, 'lspsaga')
if (not status) then return end

saga.setup {
  server_filetype_map = {}
}


local kmap = vim.keymap.set
local opts = { noremap = true, silent = true }

kmap('n', '"', '<cmd>Lspsaga diagnostic_jump_next<CR>', opts)
kmap('n', 'K', '<cmd>Lspsaga hover_doc<CR>', opts)
kmap('n', 'gd', '<cmd>Lspsaga lsp_finder<CR>', opts)
kmap('n', 'gr', '<cmd>Lspsaga rename<CR>', opts)
