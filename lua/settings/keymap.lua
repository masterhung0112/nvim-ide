-- Buffers
vim.api.nvim_set_keymap('n', '<leader>bda', ':BufferCloseAllButCurrent<CR>', {noremap=false, silent = false})
vim.api.nvim_set_keymap('n', '<leader>bn', ':BufferNext<CR>', {noremap = false, silent = false})
vim.api.nvim_set_keymap('n', '<leader>bp', ':BufferPrevious<CR>', {noremap = false, silent = false})
