-- Set leaderkey
vim.g.mapleader = " "
vim.g.maplocalleader = " "

--require("core.linux_keymap")
require("core.mac_keymap")
--require("plugins")

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.termguicolors = true

-- Linux clipboard
--vim.opt.clipboard ="unnamedplus"

