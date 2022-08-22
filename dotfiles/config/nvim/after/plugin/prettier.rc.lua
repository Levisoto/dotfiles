--[[ local status, prettier = pcall(require, "prettier")
if (not status) then return end

prettier.setup {
  bin = 'prettierd',
  filetypes = {
    "css",
    "javascript",
    "javascriptreact",
    "typescript",
    "typescriptreact",
    "json",
    "scss",
    "less"
  },
  --[[ arrow_parens = "always",
  bracket_spacing = true,
  bracket_same_line = false,
  embedded_language_formatting = "auto",
  end_of_line = "lf",
  semi = true,
  use_tabs = false,
  single_quote = false,
} ]]
