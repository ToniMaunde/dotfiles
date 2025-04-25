-- Make line numbers default
vim.wo.number = true

-- Make floating windows rounded
vim.o.winborder = "rounded"

-- set relative lines on
vim.o.relativenumber = true

-- Set highlight on search
vim.o.hlsearch = false

-- Enable mouse mode
vim.o.mouse = "a"

-- Show a line under the cursor to spot it more quickly
vim.opt.cursorline = true

-- Don't show the mode since it's already in the status line (see mini.line or status line)
vim.opt.showmode = false

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.o.clipboard = "unnamedplus"

-- Enable break indent
vim.o.breakindent = true

-- Keep the indentation from the previous line
vim.opt.autoindent = true

-- Set appropriate tab values
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2

-- Save undo history
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.wo.signcolumn = "yes"

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.o.completeopt = "menuone,noselect"

-- NOTE: You should make sure your terminal supports this
vim.o.termguicolors = true

-- Set the editor background. This option impacts how themes are selected
-- vim.o.background = "dark"

-- Configure how splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Displaying whitespace characters
-- See `help list` and `help listchars`
vim.opt.list = false
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- Minimal number of screen lines that must be visible both above and below the cursor line
vim.opt.scrolloff = 4

-- Disable swap files
vim.opt.swapfile = false

-- if performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
-- instead raise a dialog asking if you wish to save the current file(s)
-- See `:help 'confirm'`
vim.opt.confirm = true
