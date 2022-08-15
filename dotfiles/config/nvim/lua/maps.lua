local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}
local cmd = vim.cmd

-- Delete a word backwards
map('n', 'dw', 'vb"_d', default_opts)

-- New tab
map('n', 'te', ':tabedit', default_opts)

-- Split window
map('n', 'ss', ':split<Return><C-w>w', default_opts)
map('n', 'sv', ':vsplit<Return><C-w>w', default_opts)
--
-- clear search highlighting
map('n', '<leader>c', ':nohl<CR>', default_opts)

-- map Esc to kk
map('i', 'kk', '<Esc>', {noremap = true})

-- don't use arrow keys
map('', '<up>', '<nop>', {noremap = true})
map('', '<down>', '<nop>', {noremap = true})
map('', '<left>', '<nop>', {noremap = true})
map('', '<right>', '<nop>', {noremap = true})

map('i', '<C-h>', '<left>', default_opts)
map('i', '<C-j>', '<down>', default_opts)
map('i', '<C-k>', '<up>', default_opts)
map('i', '<C-l>', '<right>', default_opts)

-- fast saving with <leader> and s
map('n', '<leader>s', ':w<CR>', default_opts)
map('i', '<leader>s', '<C-c>:w<CR>', default_opts)

-- move around splits using Ctrl + {h,j,k,l}
map('n', '<Space>', '<C-w>w', default_opts)
map('n', '<C-h>', '<C-w>h', default_opts)
map('n', '<C-j>', '<C-w>j', default_opts)
map('n', '<C-k>', '<C-w>k', default_opts)
map('n', '<C-l>', '<C-w>l', default_opts)

-- close all windows and exit from neovim
map('n', '<leader>q', ':quitall<CR>', default_opts)


-- Resize with arrows
map('n', '<C-Up>', ':resize -2<CR>', default_opts)
map('n', '<C-Down>', ':resize +2<CR>', default_opts)
map('n', '<C-Left>', ':vertical resize -2<CR>', default_opts)
map('n', '<C-Right>', ':vertical resize +2<CR>', default_opts)

-- on hesitation, bring up the panel
map('n', '<C-s>', ':SidebarNvimToggle<CR>', default_opts)

--nvim-lazygit
map('n', '<C-g>', ':LazyGit<CR>', default_opts)       -- open/close

-- hop
-- place this in one of your configuration file(s)
map('n', 'f', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>", {})
map('n', 'F', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>", {})
map('n', 't', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })<cr>", {})
map('n', 'T', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })<cr>", {})

