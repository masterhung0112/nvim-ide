 require('session-lens').setup{}
 vim.api.nvim_set_keymap('n', '<leader>ss', ':SearchSession<CR>', { noremap = true, silent = true})
