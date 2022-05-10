vim.g.ctrlsf_ackprg = 'rg'
vim.g.ctrls_auto_preview = 1 -- Show the preview window automatically while moving from match to match in the results pane
vim.g.ctrlsf_search_mode = 'async'
vim.g.ctrlsf_default_view_mode = 'compact' -- Display the window at below

-- Keymap
vim.api.nvim_set_keymap('n', '<C-F>f', '<Plug>CtrlSFPrompt', {noremap = false, silent = false})
vim.api.nvim_set_keymap('v', '<C-F>f', '<Plug>CtrlSFVwordExec', {noremap = false, silent = false})
vim.api.nvim_set_keymap('n', '<C-F>n', '<Plug>CtrlSFCwordExec', {noremap = false, silent = false})
vim.api.nvim_set_keymap('n', '<C-F>t', ':CtrlSFToggle<CR>', {noremap = true, silent = false})
