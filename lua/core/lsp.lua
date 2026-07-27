local capabilities = require("cmp_nvim_lsp").default_capabilities()

local servers = {
	html = {},
	cssls = {},
	vtsls = {},
	eslint = {},
	jsonls = {},
	bashls = {},
	jdtls = {},
	pyright = {},
	marksman = {},
	lua_ls = {
		settings = {
			Lua = {
				runtime = {
					version = "LuaJIT",
				},
				workspace = {
					library = vim.api.nvim_get_runtime_file("", true),
					checkThirdParty = false,
				},
				diagnostics = {
					globals = { "vim" },
				},
			},
		},
	},
}

for server, config in pairs(servers) do
	config.capabilities = capabilities
	vim.lsp.config(server, config)
	vim.lsp.enable(server)
end
