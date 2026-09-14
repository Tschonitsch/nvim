--     _____
--    /  __ \
--    | /  \/_ __ ___  _ __
--    | |   | '_ ` _ \| '_ \
--    | \__/\ | | | | | |_) |
--     \____/_| |_| |_| .__/
--                    | |
--                    |_|

-- ---------- Config ----------
local cmp = require("cmp")

cmp.setup({

	-- ---------- Snippet ----------
	snippet = {
		expand = function(args)
			require("luasnip").lsp_expand(args.body)
		end,
	},
	-- ---------- Snippet ----------

	-- ---------- Keybinds  ----------
	mapping = cmp.mapping.preset.insert({
		["<C-Space>"] = cmp.mapping.complete(),
		["<CR>"] = cmp.mapping.confirm({ select = true }),
		["<Tab>"] = cmp.mapping.select_next_item(),
		["<S-Tab>"] = cmp.mapping.select_prev_item(),
	}),
	-- ---------- Keybinds  ----------

	-- ---------- Sources ----------
	sources = {
		{ name = "buffer" },
		{ name = "path" },
		{ name = "nvim_lsp" },
		{ name = "luasnip" },
	},
	-- ---------- Sources ----------
})
-- ---------- Config ----------
