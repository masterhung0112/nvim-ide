require'nvim-treesitter.configs'.setup {
  ensure_installed = "all", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  sync_install = false,
  ignore_install = { "phpdoc" }, -- phpdoc has problem with installation in Mac M1

  highlight = {
    enable = true,              -- false will disable the whole extension
  },
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  }
}
