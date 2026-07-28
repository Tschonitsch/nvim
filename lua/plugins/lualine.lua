require("lualine").setup({
	options = {
		theme = "auto",
		component_separators = "/",
		section_separators = "",
	},

	sections = {
		lualine_a = { "mode" },
		lualine_b = { "branch", "diff", "diagnostics" },

		lualine_c = {
			{
				"filename",
				fmt = function(name)
					if vim.bo.buftype == "terminal" then
						return " Terminal"
					end
					return name
				end,
			},
		},

		lualine_x = { "encoding", "fileformat", "filetype" },
		lualine_y = { "progress" },
		lualine_z = { "location" },
	},
})
