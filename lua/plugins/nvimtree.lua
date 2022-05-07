vim.g.nvim_tree_auto_ignore_ft = 'startify'

require'nvim-tree'.setup {
  disable_netrw = false, -- disable netrw completely
  hijack_cursor = false,
  hijack_netrw = true, -- hijack netrw window on startup
  open_on_setup = false, -- open the tree when running this setup function
  ignore_ft_on_setup = {}, -- will not open on setup if the filetype is in this list
  open_on_tab = false, -- opens the tree when changing/opening a new tab if the tree wasn't previously opened
  hijack_cursor = false, -- Hijack the cursor in the tree to put it at the start of the filename
  update_cwd = false, -- updates the root directory of the tree on `DirChange` (when you run `:cd` usually)
  --sorted_by = "name",
  view = {
    width = 30,
    height = 30,
    side = 'left',
    mappings = {
      -- custom only false will merge the list with the default mappings
      -- if true, it will only use your list to set the mappings
      custom_only = false,
      -- list of mappings to set on the tree manually
      list = {}
    }
  }
}
vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeToggle<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>r', ':NvimTreeRefresh', {noremap = true, silent = true})
