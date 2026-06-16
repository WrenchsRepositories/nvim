-- Bufferline configuration (native pack compatible)
-- Path: lua/plugins/bufferline.lua
--
-- Requirements:
-- 1) Install the plugin and its dependency using Neovim's native package path, for example:
--    git clone https://github.com/akinsho/bufferline.nvim ~/.local/share/nvim/site/pack/plugins/start/bufferline.nvim
--    git clone https://github.com/nvim-tree/nvim-web-devicons ~/.local/share/nvim/site/pack/plugins/start/nvim-web-devicons
-- 2) Then require this module from your init.lua: require("plugins.bufferline")

local ok, bufferline = pcall(require, "bufferline")
if not ok then
  -- bufferline not installed or failed to load; nothing to do
  return
end

bufferline.setup({
  options = {
    numbers = "none",
    close_command = "bdelete! %d",
    right_mouse_command = "bdelete! %d",
    left_trunc_marker = "",
    right_trunc_marker = "",
    max_name_length = 30,
    max_prefix_length = 15,
    tab_size = 20,
    diagnostics = "nvim_lsp",
    diagnostics_indicator = function(count, _, _, _)
      return "(" .. count .. ")"
    end,
    show_buffer_close_icons = true,
    show_close_icon = false,
    enforce_regular_tabs = false,
    always_show_bufferline = true,
    offsets = {
      {
        filetype = "neo-tree",
        text = "Explorer",
        text_align = "left",
        separator = true,
      },
    },
    hover = { enabled = true, delay = 200, reveal = { 'close' } },
  },
})

-- Toggle bufferline visibility (showtabline: 0 = hidden, 2 = always show)
vim.keymap.set("n", "<leader>tb", function()
  vim.o.showtabline = (vim.o.showtabline == 0) and 2 or 0
end, { desc = "Toggle bufferline" })
