-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
	sort_by = "case_sensitive",
	view = {
		side = "right",
		width = 50,
	},
	renderer = {
		group_empty = true,
	},
	filters = {
		dotfiles = true,
		git_ignored = true,
	},
})

vim.keymap.set("n", "<leader>o", "<cmd>NvimTreeToggle<CR>")
