--
-- Set Leader key space
vim.g.mapleader = " "

-- import configrations
require("config.lazy")

-- Config
-- vim.g.lazyvim_check_order = false
vim.opt.swapfile = false       -- Disable swap files
vim.opt.foldmethod = "manual"
vim.opt.number = false         -- Absolute line numbers
vim.opt.relativenumber = false -- Relative line numbers
vim.o.laststatus = 0
vim.opt.termguicolors = true
vim.opt.showmode = false
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.clipboard = "unnamedplus"


