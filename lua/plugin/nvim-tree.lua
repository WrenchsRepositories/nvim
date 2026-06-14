vim.opt.rtp:prepend("~/.local/share/nvim/pack/plugins/start/nvim-web-devicons")
vim.opt.rtp:prepend("~/.local/share/nvim/pack/plugins/start/nvim-tree.lua")


vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1


-- Plugins
require("nvim-tree").setup({
	view = {
		width = 20,
		side = "left"
	},
	renderer = {
		group_empty = true  
	},
	filters = {
		dotfiles = false   
	}
})


vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", opts)
