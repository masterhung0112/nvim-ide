vim.g.mapleader = ','
vim.opt.showtabline = 2
vim.opt.scrolloff = 5
vim.opt.mouse = 'a'
vim.opt.hidden = true
vim.opt.clipboard = 'unnamedplus'
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.showmatch = true
vim.opt.showcmd = true
vim.opt.smartcase = true
vim.opt.errorbells = false
vim.opt.encoding = 'UTF-8'
vim.opt.laststatus = 3

-- Buffer
vim.opt.fileformat = 'unix'
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.swapfile = false
vim.opt.undofile = false

-- Window
vim.opt.number = true
vim.opt.foldmethod = 'indent'
vim.opt.foldlevel = 1
vim.opt.list = false
vim.opt.foldnestmax = 10
vim.opt.signcolumn = 'yes' -- display error column by default, so the view is consistent
-- vim.opt.relativenumber = true
vim.opt.foldenable = false
vim.opt.cursorline = true

vim.api.nvim_create_autocmd("BufReadPost", {
  callback = function()
    local last_pos = vim.fn.line("'\"")
    if last_pos > 0 and last_pos <= vim.fn.line("$") then
      vim.api.nvim_win_set_cursor(0, {last_pos, 0})
    end
  end,
})

-- vim.api.nvim_create_autocmd("TextYankPost", {
--   callback =  function()
--     vim.highlight.on_yank()
--   end,
-- })
