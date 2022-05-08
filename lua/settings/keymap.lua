-- Buffers
vim.api.nvim_set_keymap('n', '<leader>bda', ':%bd|e#<CR>', {noremap=false, silent = false})
--vim.api.nvim_set_keymap('n', '<leader>bda', ':BufferCloseAllButCurrent<CR>', {noremap=false, silent = false})
vim.api.nvim_set_keymap('n', '<leader>bn', ':bn<CR>', {noremap = false, silent = false})
vim.api.nvim_set_keymap('n', '<leader>bp', ':bp<CR>', {noremap = false, silent = false})
vim.api.nvim_set_keymap('n', '<leader>bg', ':ls<CR>:b<Space>', {noremap = true, silent = true})
