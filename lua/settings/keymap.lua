vim.api.nvim_set_keymap('n', '<c-z>', '<nop>', {noremap=false, silent = false})

-- Buffers
vim.api.nvim_set_keymap('n', '<leader>bda', ':%bd|e#<CR>', {noremap=false, silent = false})
--vim.api.nvim_set_keymap('n', '<leader>bda', ':BufferCloseAllButCurrent<CR>', {noremap=false, silent = false})
vim.api.nvim_set_keymap('n', '<leader>bn', ':bn<CR>', {noremap = false, silent = false})
vim.api.nvim_set_keymap('n', '<leader>bp', ':bp<CR>', {noremap = false, silent = false})
vim.api.nvim_set_keymap('n', '<leader>bg', ':ls<CR>:b<Space>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>bw', ':b#|bd#<CR>', {noremap = true, silent = true})

-- Window
vim.api.nvim_set_keymap('n', '<c-h>', '<c-w>h', {noremap = false, silent = false})
vim.api.nvim_set_keymap('n', '<c-j>', '<c-w>j', {noremap = false, silent = false})
vim.api.nvim_set_keymap('n', '<c-k>', '<c-w>k', {noremap = false, silent = false})
vim.api.nvim_set_keymap('n', '<c-l>', '<c-w>l', {noremap = false, silent = false})

-- Copy paste
vim.api.nvim_set_keymap('n', '<C-c>', '"+y<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-p>', '"+p<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '<C-c>', '"+y<CR>', {noremap = true, silent = true})
