local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'

  -- Lua Development
  use "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins
  use "nvim-lua/popup.nvim"
  -- use "folke/lua-dev.nvim"


  -- LSP
  use "neovim/nvim-lspconfig" -- enable LSP
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use "jose-elias-alvarez/null-ls.nvim" -- for formatters and linters
  use 'glepnir/lspsaga.nvim' -- LSP UIs
  use 'onsails/lspkind-nvim' -- vscode-like pictograms

  -- Completion
  use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/nvim-cmp' -- Completion


  -- Color
  use "norcalli/nvim-colorizer.lua"
  use "ziontee113/color-picker.nvim"

  -- Colorschemes
  -- use 'Shatur/neovim-ayu'
  --use "ellisonleao/gruvbox.nvim"
  -- use "lunarvim/onedarker.nvim"
  -- use "lunarvim/darkplus.nvim"
  use "folke/tokyonight.nvim"
  -- use "lunarvim/colorschemes"
  --[[ use {
    'svrana/neosolarized.nvim',
    requires = { 'tjdevries/colorbuddy.nvim' }
  } ]]


  -- Snippet
  use "hrsh7th/cmp-vsnip"
  use "hrsh7th/vim-vsnip"
  use "hrsh7th/vim-vsnip-integ"
  use "saadparwaiz1/cmp_luasnip"
  use "L3MON4D3/LuaSnip" --snippet engine
  use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

  -- Syntax/Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use "JoosepAlviste/nvim-ts-context-commentstring"
  use "p00f/nvim-ts-rainbow"
  use "nvim-treesitter/playground"
  use "windwp/nvim-ts-autotag"
  use "nvim-treesitter/nvim-treesitter-textobjects"

  -- Fuzzy Finder/Telescope
  use {
    'nvim-telescope/telescope.nvim',
    wants = {
      "plenary.nvim",
      "popup.nvim",
      "telescope-fzf-native.nvim",
      "telescope-project.nvim",
      "telescope-repo.nvim",
      "telescope-file-browser.nvim",
      "project.nvim",
    },
    requires = {
      'nvim-telescope/telescope-file-browser.nvim',
      "nvim-telescope/telescope-media-files.nvim",
      "tom-anders/telescope-vim-bookmarks.nvim",
      { "nvim-telescope/telescope-fzf-native.nvim", run = "make" },
      "nvim-telescope/telescope-project.nvim",
      "cljoly/telescope-repo.nvim",
      {
        "ahmedkhalf/project.nvim",
        config = function()
          require("project_nvim").setup {}
        end,
      },
    }
  }



  -- Editing Support
  use "windwp/nvim-autopairs"
  use 'folke/zen-mode.nvim'

  -- Comment
  use 'b3nj5m1n/kommentary'

  -- Statusline
  use "christianchiarulli/lualine.nvim"

  -- Icon
  use "kyazdani42/nvim-web-devicons"

  --Tabline
  use "akinsho/bufferline.nvim"
  -- use "tiagovla/scope.nvim"

  -- Git
  use 'lewis6991/gitsigns.nvim'
  use 'dinhhuy258/git.nvim' -- For git blame & browse

  -- Flutter
  use { 'akinsho/flutter-tools.nvim', requires = 'nvim-lua/plenary.nvim' }

  -- Java
  use 'mfussenegger/nvim-jdtls'

  -- Markdown
  --[[ use {
    "iamcco/markdown-preview.nvim",
    run = "cd app && npm install",
    ft = "markdown",
  }

or 

  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })
 ]]

end)
