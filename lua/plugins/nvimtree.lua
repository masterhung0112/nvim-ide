vim.g.nvim_tree_auto_ignore_ft = 'startify'
-- vim.g.nvim_tree_icons = {
--   default = '',
--   symlink = '',
--   git = {unstaged = "", staged = "", unmerged = "", renamed = "", untracked = "", deleted = "✖", ignored = ""},
--   folder = {default = "", open = "", empty = "", empty_open = "", symlink = ""}
-- }
require'nvim-tree'.setup {
  disable_netrw = false, -- disable netrw completely
  hijack_cursor = false, -- hijack the cursor in the tree to put it at the start of the filename
  hijack_netrw = true, -- hijack netrw window on startup
  open_on_setup = false, -- open the tree when running this setup function
  ignore_ft_on_setup = {}, -- will not open on setup if the filetype is in this list
  open_on_tab = false, -- opens the tree when changing/opening a new tab if the tree wasn't previously opened
  hijack_cursor = false, -- Hijack the cursor in the tree to put it at the start of the filename
  update_cwd = false, -- updates the root directory of the tree on `DirChange` (when you run `:cd` usually)
  --sorted_by = "name",
  -- show lsp diagnostics in the signcolumn
  diagnostics = {
    enable = false,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    }
  },
  -- update the focused file on `BufEnter`, un-collapses the folders recursively until it finds the file
  update_focused_file = {
    -- enables the feature
    enable      = false,
    -- update the root directory of the tree to the one of the folder containing the file if the file is not under the current root directory
    -- only relevant when `update_focused_file.enable` is true
    update_cwd  = false,
    -- list of buffer names / filetypes that will not update the cwd if the file isn't found under the current root directory
    -- only relevant when `update_focused_file.update_cwd` is true and `update_focused_file.enable` is true
    ignore_list = {}
  },
  -- configuration options for the system open command (`s` in the tree by default)
  system_open = {
    -- the command to run this, leaving nil should work in most cases
    cmd  = nil,
    -- the command arguments as a list
    args = {}
  },
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
  },
  -- renderer = {
  --   indent_markers = {
  --     enable = false,
  --     icons = {
  --       corner = "└ ",
  --       edge = "│ ",
  --       none = "  ",
  --     },
  --   },
  --   icons = {
  --     webdev_colors = true,
  --     git_placement = "before",
  --   }
  -- },
}

-- automatically close the tab/vim when nvim-tree is the last window in the tab
vim.cmd([[
autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif
]])

vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeToggle<CR>', {noremap = true, silent = true})
-- vim.api.nvim_set_keymap('n', '<leader>r', ':NvimTreeRefresh', {noremap = true, silent = true})
