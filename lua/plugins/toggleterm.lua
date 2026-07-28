require("toggleterm").setup({
	open_mapping = "<C-t>",
	direction = "tab",
	size = function(term)
		return vim.o.columns * 0.35
	end,
})
