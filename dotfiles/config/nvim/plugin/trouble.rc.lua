local status, trouble = pcall(require, "trouble")
if (not status) then return end

trouble.setup({
  position = "bottom",
})

local opts = { noremap = true, silent = true }
-- vim.keymap.set('n', '<C-j>', '<Cmd>Lspsaga diagnostic_jump_next<CR>', opts)
vim.keymap.set('n', 'xx', '<Cmd>TroubleToggle<CR>', opts)
vim.keymap.set('n', 'xw', '<Cmd>TroubleToggle workspace_diagnostics<CR>', opts)
vim.keymap.set('n', 'xq', '<Cmd>TroubleToggle quickfix<CR>', opts)
vim.keymap.set('n', 'xl', '<Cmd>TroubleToggle loclist<CR>', opts)
vim.keymap.set('n', 'gR', '<Cmd>TroubleToggle lsp_references<CR>', opts)
