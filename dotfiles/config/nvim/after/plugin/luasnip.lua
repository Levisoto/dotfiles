local ls = require("luasnip")

local s = ls.snippet
local sn = ls.snippet_node
local isn = ls.indent_snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local events = require("luasnip.util.events")
local ai = require("luasnip.nodes.absolute_indexer")
local fmt = require("luasnip.extras.fmt").fmt
local extras = require("luasnip.extras")
local m = extras.m
local l = extras.l
local rep = extras.rep
local postfix = require("luasnip.extras.postfix").postfix

ls.add_snippets("all", {
  s("ternary", {
    -- equivalent to "${1:cond} ? ${2:then} : ${3:else}"
    i(1, "cond"), t(" ? "), i(2, "then"), t(" : "), i(3, "else")
  }),
  s("trigger", {
    t({ "\t\tAfter expanding, the cursor is here ->" }), i(1),
    t({ "", "After jumping forward once, cursor is here ->" }), i(2),
    t({ "", "After jumping once more, the snippet is exited there ->" }), i(0),
  })
})

ls.add_snippets("typescript", {
  s("cl", fmt(
    [[
    console.log({})
    ]], {
    i(1)
  }
  )),
})

require("luasnip.loaders.from_vscode").load({ include = { "python", "typescript", "typescriptreact" } }) -- Load only python snippets

require("luasnip.loaders.from_vscode").load({ paths = { "./snippets" } })
