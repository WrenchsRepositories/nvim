
local opts = {
	noremap = true,
	silent = true
}


-- Format
vim.keymap.set("n","<S-A-f>","gg=G",opts)

--Text
-- Normal ALT move
vim.keymap.set("n","<A-j>",":m .+1<CR>==",opts)
vim.keymap.set("n","<A-k>",":m .-2<CR>==",opts)
-- Insert ALT move
vim.keymap.set("i","<A-j>","<Esc>:m .+1<CR>==gi",opts)
vim.keymap.set("i","<A-k>","<Esc>:m .-2<CR>==gi",opts)
-- Visual ALT move
vim.keymap.set("v","<A-j>",":m '>+1<CR>gv=gv",opts)
vim.keymap.set("v","<A-k>",":m '<-2<CR>gv=gv",opts)
-- Normal select all
vim.keymap.set("n","<C-a>","ggvG$",opts)


-- Change windows 
vim.keymap.set("n","<C-h>","<C-w>h",opts)
vim.keymap.set("n","<C-j>","<C-w>j",opts)
vim.keymap.set("n","<C-k>","<C-w>k",opts)
vim.keymap.set("n","<C-l>","<C-w>l",opts)

-- Edit word
vim.keymap.set("n","vw","viw",opts)
vim.keymap.set("n","yw","yiw",opts)
vim.keymap.set("n","dw","diw",opts)
vim.keymap.set("n","cw","ciw",opts)


