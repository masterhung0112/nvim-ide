local telescope = require('telescope')

telescope.setup{
  extensions = {
    fzy_native = {
      override_generic_sorter = false,
      override_file_sorter = true,
    }
  }
}

-- Extensions
telescope.load_extension('fzy_native')
telescope.load_extension('repo')
telescope.load_extension('neoclip')
telescope.load_extension('notify')
telescope.load_extension('harpoon')
-- telescope.load_extension('dap')


vim.api.nvim_set_keymap('n', '<leader>r', ":lua require('telescope.builtin').live_grep()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>#', ":lua require('telescope.builtin').grep_string()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>bb', ":lua require('telescope.builtin').buffers()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>h', ":lua require('harpoon.mark').add_file()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>m', ":Telescope harpoon marks<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>mm', ":lua require('harpoon.ui').toggle_quick_menu()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>t', ":lua require('telescope.builtin').treesitter()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>l', ":lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>f', ":lua require('plugins.telescope').project_files()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>p', ":Telescope repo list<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>c', ":lua require('plugins.telescope').my_git_commits()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>g', ":lua require('plugins.telescope').my_git_status()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>b', ":lua require('plugins.telescope').my_git_bcommits()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>n', ":lua require('plugins.telescope').my_note()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>nn', ":e ~/Note/", {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', '<leader>gc', ':Octo issue create<CR>', {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', '<leader>i', ':Octo issue list<CR>', {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', '<leader>y', ':Telescope neoclip<CR>', {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', '<leader>ll', ":lua require('telescope.builtin').grep_string({ search = vim.fn.input('GREP -> ') })<CR>", {noremap = true, silent = true})

