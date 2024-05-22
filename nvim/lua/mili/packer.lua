return require('packer').startup(function(use)
-- Packer can manage itself
  use 'wbthomason/packer.nvim'
    use({ 'rose-pine/neovim',
	as = 'rose-pine',
	config = function()
		vim.cmd('colorscheme rose-pine')
		vim.cmd('set relativenumber')
	end})
  use {
    "folke/which-key.nvim",
    config = function()
	    vim.o.timeout = true
	    vim.o.timeoutlen = 300
	    require("which-key").setup {

		    -- your configuration comes here
		    -- or leave it empty to use the default settings
		    -- refer to the configuration section below
            }
    end}
  use {'nvim-lualine/lualine.nvim',
  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
end)

