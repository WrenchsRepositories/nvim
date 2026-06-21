
local opts = {
	noremap = true,
	silent = true
}


-- Format
vim.keymap.set("n","<C-f>","gg=G",opts)

--Text
-- Normal option move
vim.keymap.set("n","<C-j>",":m .+1<CR>==",opts)
vim.keymap.set("n","<C-k>",":m .-2<CR>==",opts)
-- Insert option move
vim.keymap.set("i","<C-j>","<Esc>:m .+1<CR>==gi",opts)
vim.keymap.set("i","<C-k>","<Esc>:m .-2<CR>==gi",opts)
-- Visual option move
vim.keymap.set("v","<C-j>",":m '>+1<CR>gv=gv",opts)
vim.keymap.set("v","<C-k>",":m '<-2<CR>gv=gv",opts)
-- Normal select all
vim.keymap.set("n","<C-a>","ggvG$",opts)

-- Edit word
vim.keymap.set("n","vw","viw",opts)
vim.keymap.set("n","yw","yiw",opts)
vim.keymap.set("n","dw","diw",opts)
vim.keymap.set("n","cw","ciw",opts)


