-- Files for basic settings
require('settings')
require('keymaps')

-- Plugins
require('plugins/packer')              -- plugin manager
require('plugins/auto-save')              -- autosave

--require('plugins/nvim-tree')           -- filebrowser
require('plugins/neo-tree')           -- filebrowser
require('plugins/indent-blankline')    -- indentation

require('plugins/ayu')
require('plugins/feline')              -- statusline
require('plugins/gitsigns')              -- git decorations
require('plugins/diffview')              -- git diffview
require('plugins/nvim-autopairs')      -- autopairs
require('plugins/mason')               -- LSP settings
require('plugins/nvim-cmp')            -- autocomplete
require('plugins/nvim-lspconfig')      -- LSP settings
require('plugins/nvim-treesitter')     -- tree-sitter interface
require('plugins/sidebar-nvim')          -- sidebar
require('plugins/tabby')               -- tabs
require('plugins/vista')               -- tag viewer
require('plugins/telescope-nvim')      --
require('plugins/telescope-ui-select') --
--require('plugins/lualine')           -- statusline

require('plugins/telescope-media-files')
require('plugins/hop')
require('plugins/neoterm')

--require('plugins/nvim-dap-ui')
-- Utils
require('plugins/emmet-vim')              -- plugin manager
require('plugins/kommentary')              -- autosave
