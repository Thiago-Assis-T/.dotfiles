local options = {
	-- Sets the number on the left-hand side.
	number = true,
	-- Sets the relative number on the left-hand side.
	relativenumber = true,
	-- Sets the number of whitespace a \t char is worth (hitting tab key on your keyboard).
	tabstop = 8,
	-- Sets the number of whitespaces which is considered as an indent.
	shiftwidth = 8,
	-- Replaces \t with whitespaces.
	expandtab = true,
	-- Don't show mode, it is in the status line.
	showmode = false,
	-- Enable breakindent.
	breakindent = true,
	-- Make search case-insensitive unless escaped \C or more then one letter in the search is capital.
	ignorecase = true,
	smartcase = true,
	-- Keeb the signcolumn on even when not used.
	signcolumn = "yes",
	-- Decreased update time.
	updatetime = 200,
	-- Decreased time for mapped sequence.
	timeoutlen = 250,
	-- Configure splits opening.
	splitright = true,
	splitbelow = true,
	-- Highlight the current cursor line.
	cursorline = true,
	-- Create a minimal number of lines around cursor line.
	scrolloff = 10,
}

-- Appends vim.opt to all of the options we defined above; using a loop.
for k, v in pairs(options) do
	vim.opt[k] = v
end

vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("lazyPM")
require("keymaps")
require("lsp-config")
