-- NOTE: enabling it alongside blink-cmp causes a duplication of auto completion windows
-- vim.api.nvim_create_autocmd("LspAttach", {
-- 	callback = function(ev)
-- 		local client = vim.lsp.get_client_by_id(ev.data.client_id)
-- 		if client ~= nil then
-- 			if client:supports_method("textDocument/completion") then
-- 				vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
-- 			end
-- 		end
-- 	end,
-- })

-- Use snack.rename to better integrate with the LSP and plugins like
-- oil.nvim or mini.files
vim.api.nvim_create_autocmd("User", {
	pattern = "MiniFilesActionRename",
	callback = function(event)
		Snacks.rename.on_rename_file(event.data.from, event.data.to)
	end,
})

-- Highlight on yank
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank()
	end,
	group = highlight_group,
	pattern = "*",
})

-- Change color scheme based on the time of day
local morning_theme = "catppuccin-latte"
local afternoon_theme = "catppuccin-latte"
local evening_theme = "catppuccin-macchiato"
local late_evening_theme = "catppuccin-mocha"

local colorscheme_command = {
	["morning"] = "colorscheme " .. morning_theme,
	["afternoon"] = "colorscheme " .. afternoon_theme,
	["evening"] = "colorscheme " .. evening_theme,
	["late_evening"] = "colorscheme " .. late_evening_theme,
}
vim.api.nvim_create_autocmd({ "Colorscheme", "VimEnter", "VimResume" }, {
	callback = function()
		--NOTE: "%H" returns the current hour in the 24h format
		local current_hour = tonumber(os.date("%H"))

		local current_colorscheme = vim.g.colors_name

		if current_hour >= 5 and current_hour < 13 then
			if current_colorscheme ~= morning_theme then
				vim.o.background = "light"
				vim.cmd(colorscheme_command["morning"])
			end
		elseif current_hour >= 13 and current_hour < 17 then
			if current_colorscheme ~= afternoon_theme then
				vim.o.background = "light"
				vim.cmd(colorscheme_command["afternoon"])
			end
		elseif current_hour >= 17 and current_hour < 22 then
			if current_colorscheme ~= evening_theme then
				vim.o.background = "dark"
				vim.cmd(colorscheme_command["evening"])
			end
		elseif current_hour >= 22 then
			if current_colorscheme ~= late_evening_theme then
				vim.o.background = "dark"
				vim.cmd(colorscheme_command["late_evening"])
			end
		end
	end,
})
