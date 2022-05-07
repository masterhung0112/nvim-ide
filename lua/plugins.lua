local fn = vim.fn
local execute = vim.api.nvim_command

local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

-- install packer if it's not installed already
if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
  execute 'packadd packer.nvim'
end

require('packer').init({display = {auto_clean = false}})

-- vim.api.nvim_create_autocmd("BufWritePost", {
--	pattern = "plugins.lua",
--	command = "source <afile> | PackerCompile",
-- })
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

return require('packer').startup(function(use)
	-- Load lua path
	local lua_path = function(name)
		return string.format("require'plugins.%s'", name)
  end
  
	-- Packer should manage itself
  use 'wbthomason/packer.nvim'
	
	-- LSP
  use { 'neovim/nvim-lspconfig' }
	
	-- Autocomplete
	-- Treesitter
	-- Syntax
	-- Icons
	-- Status Line and Bufferline
	-- Telescope
	-- Explorer
	use { 'kyazdani42/nvim-tree.lua', 
		config = lua_path"nvimtree", 
		requires = {
			'kyazdani42/nvim-web-devicons', -- optional, for file icon
		}
	}

	-- Color
	-- Git
	-- Registers & clipboard
	-- Move & Search & Replace
	-- Tmux
	-- Colorscheme
  use { 'Mofiqul/vscode.nvim',
    config = lua_path"vscode"
  }

	-- Tags
	-- Debugger
	-- General Plugins
  use { 'max397574/better-escape.nvim',
		config = lua_path"better-escape"
    --config = lua_path"better-escape",
  }

end)
