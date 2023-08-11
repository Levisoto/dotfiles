local status, null_ls = pcall(require, "null-ls")
if (not status) then return end

-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
local formatting = null_ls.builtins.formatting
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
local diagnostics = null_ls.builtins.diagnostics

null_ls.setup {
  debug = false,
  sources = {
    formatting.prettier.with {
      extra_filetypes = { "toml", "solidity" },
      extra_args = { "--no-semi=false", "--single-quote=false", "--jsx-single-quote=false", "--use-tabs=false" },
    },
    formatting.black.with { extra_args = { "--fast" } },
    formatting.stylua,
    formatting.shfmt,
    formatting.google_java_format,
    formatting.csharpier,
    -- diagnostics.flake8,
    diagnostics.shellcheck,
  },
}
