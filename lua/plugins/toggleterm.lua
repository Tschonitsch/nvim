require("toggleterm").setup({
  open_mapping = "<C-t>",
  direction = "vertical",
  size = function(term)
    return vim.o.columns * 0.35
  end,
})