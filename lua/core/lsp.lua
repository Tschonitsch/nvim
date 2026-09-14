--     _       ______  _____
--    | |     /  ___| | ___ \
--    | |     \ `--.  | |_/ /
--    | |      `--. \ |  __/
--    | |____ /\__/ / | |
--    \_____/ \____/  \_|

local capabilities = require("cmp_nvim_lsp").default_capabilities()

local servers = {
	clangd = {},
	html = {},
	cssls = {},
	vtsls = {},
	eslint = {},
	jsonls = {},
	bashls = {},
	jdtls = {},
	pyright = {},
	marksman = {},
	qmlls = {
		cmd = {
			"qmlls",
			"-I",
			"/usr/lib/qt6/qml",
			"/usr/share/licenses/quickshell",
		},
		filetypes = { "qml" },
		root_markers = {
			".git",
			"CMakeLists.txt",
		},
	},
	lua_ls = {
		settings = {
			Lua = {
				runtime = {
					version = "LuaJIT",
				},
				workspace = {
					library = {
						vim.api.nvim_get_runtime_file("", true),
						"/usr/share/hypr/stubs",
					},
					checkThirdParty = false,
				},
				diagnostics = {
					globals = { "vim", "hl", "opts" },
				},
			},
		},
	},
}

vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(args)
		local client = vim.lsp.get_client_by_id(args.data.client_id)

		if client then
			client.server_capabilities.semanticTokensProvider = nil
		end
	end,
})

for server, config in pairs(servers) do
	config.capabilities = capabilities
	vim.lsp.config(server, config)
	vim.lsp.enable(server)
end
