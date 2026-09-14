--    ___  ___      _
--    |  \/  |     | |
--    | .  . | __ _| |_ _   _  __ _  ___ _ __
--    | |\/| |/ _` | __| | | |/ _` |/ _ \ '_ \
--    | |  | | (_| | |_| |_| | (_| |  __/ | | |
--    \_|  |_/\__,_|\__|\__,_|\__, |\___|_| |_|
--                             __/ |
--                            |___/

local function source_matugen()
	vim.cmd("highlight clear")

	local path = vim.fn.stdpath("config") .. "/colors.lua"

	if vim.uv.fs_stat(path) then
		dofile(path)

		vim.g.colors_name = "matugen"

		vim.api.nvim_exec_autocmds("ColorScheme", {
			pattern = "matugen",
		})
	else
		vim.cmd("colorscheme habamax")
	end
end

source_matugen()

vim.api.nvim_create_autocmd("Signal", {
	pattern = "SIGUSR1",
	callback = function()
		source_matugen()
	end,
})
