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
  use { 'onsails/lspkind-nvim' }
  
	-- Autocomplete
  use { 'hrsh7th/nvim-cmp' } -- Completion Engine
  use { 'hrsh7th/cmp-nvim-lsp' } -- Provide more capabilities to language servers
  use { 'hrsh7th/cmp-vsnip' }
  use { 'hrsh7th/cmp-buffer' }
  use { 'hrsh7th/cmp-path' }
  use { 'hrsh7th/cmp-calc' }
  use { 'hrsh7th/cmp-cmdline' }
  use { 'saadparwaiz1/cmp_luasnip' }
  use { 'rafamadriz/friendly-snippets' }


  -- Formatting
  use { 'sbdchd/neoformat', config = lua_path"neoformat" }
  
	-- Treesitter
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate', config = lua_path"treesitter" }

	-- Syntax
  use { 'windwp/nvim-autopairs', config = lua_path"nvim-autopairs" }
	-- Icons
	-- Status Line and Bufferline
  use { 'famiu/feline.nvim', config = lua_path"feline" }
	-- Telescope
  use { 'nvim-lua/plenary.nvim' }
  use { 'nvim-telescope/telescope.nvim', 
    config = lua_path"telescope",
  }
  use { 'nvim-telescope/telescope-fzy-native.nvim' }
  use { 'cljoly/telescope-repo.nvim' }
  use { 'nvim-telescope/telescope-dap.nvim' }
  use { 'nvim-Telescope/telescope-project.nvim' }
  
	-- Explorer
	use { 'kyazdani42/nvim-tree.lua', 
		config = lua_path"nvimtree", 
		requires = {
			'kyazdani42/nvim-web-devicons', -- optional, for file icon
		}
	}

  -- Session
  use { 'rmagatti/auto-session', config = lua_path"auto-session" }
  use { 'rmagatti/session-lens', config = lua_path"session-lens" }

	-- Color
	-- Git
  use { 'kdheepak/lazygit.nvim', config = lua_path"lazygit" }
  use { 'akinsho/git-conflict.nvim', config = lua_path"git-conflict" }

	-- Registers & clipboard
  use "tversteeg/registers.nvim"
  use { 'AckslD/nvim-neoclip.lua', config = lua_path"nvim-neoclip" }

	-- Move & Search & Replace
  use { 'dyng/ctrlsf.vim', config = lua_path"ctrlsf" }
  use { 'ThePrimeagen/harpoon', config = lua_path"harpoon" }
  
	-- Tmux
	-- Colorscheme
  use { 'Mofiqul/vscode.nvim',
    config = lua_path"vscode"
  }

  -- Terminal
  use { 'akinsho/toggleterm.nvim', tag = 'v1.*',
    config = lua_path"toggleterm"
  }

	-- Tags
	-- Debugger
  use { 'mfussenegger/nvim-dap', config = lua_path"nvim-dap" }
  use { 'rcarriga/nvim-dap-ui', config = lua_path"nvim-dap-ui" }
  use { 'theHamsta/nvim-dap-virtual-text', config = lua_path"nvim-dap-virtual-text" } 

  -- Flutter
  use { 'akinsho/flutter-tools.nvim', config = lua_path"flutter-tools" }
  
	-- General Plugins
  use { 'rcarriga/nvim-notify', config = lua_path"nvim-notify" }
  use { 'max397574/better-escape.nvim',
		config = lua_path"better-escape"
    --config = lua_path"better-escape",
  }
  use { 'airblade/vim-rooter', config = lua_path"vim-rooter" }

end)
