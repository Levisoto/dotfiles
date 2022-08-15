local cmd = vim.cmd
local opt = vim.opt

local status, ayu = pcall(require, "neovim-ayu")
if (not status) then return end

opt.termguicolors = true -- enable 24-bit RGB colors
ayu.setup({
  mirage = false,
  overrides = {
    tkLink = { fg = "#39BAE6" },
    tkBrackets = { fg = "#FF8F40" },
    tkHighLight = { fg = "#ABB0B6" },
    tkTagSep = { fg = "#399E66" },
    tkTag = { fg = "#F27083" },

  },
})
require('ayu').colorscheme()
