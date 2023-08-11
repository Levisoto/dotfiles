local status, mason = pcall(require, "mason")
if not status then
	return
end
local status2, lspconfig = pcall(require, "mason-lspconfig")
if not status2 then
	return
end

mason.setup({
      registries = {
        "lua:mason-registry.index",
        "github:mason-org/mason-registry@2023-07-07-very-gong",
    },
})

lspconfig.setup({
	ensure_installed = { "lua_ls", "tailwindcss" },
})
