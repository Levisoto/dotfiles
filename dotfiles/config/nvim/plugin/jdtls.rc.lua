local status, jdtls = pcall(require, "jdtls")
if not status then
	return
end

local config = {
	cmd = {
		"/home/leviss/.local/share/nvim/mason/bin/jdtls",
		"-configuration",
		"/home/leviss/.local/share/nvim/mason/packages/jdtls/config_linux",
		"-jar",
		"/home/leviss/.local/share/nvim/mason/packages/jdtls/plugins/org.eclipse.equinox.launcher_1.6.400.v20210924-0641.jar",
	},
	-- root_dir = vim.fs.dirname(vim.fs.find({ ".gradlew", ".git", "mvnw" }, { upward = true })[1]),
}

-- jdtls.start_or_attach(config)
