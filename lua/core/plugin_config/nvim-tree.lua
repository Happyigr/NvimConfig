vim.g.loaded_netrw = 1
vim.g.loaded_newtrPlugin = 1

require("nvim-tree").setup()

vim.keymap.set('n','<Leader>e',':NvimTreeFindFileToggle<CR>')
