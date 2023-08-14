return require ('packer').startup (function (use)
	use ({ 'wbthomason/packer.nvim' })

	use ({
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		requires = { {'nvim-lua/plenary.nvim'} }
	})

	use ({
		'nvim-telescope/telescope-file-browser.nvim',
		requires = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim' }
	})

	use ({
		'nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' }
	})

	use ({ 'nvim-treesitter/playground' })
	-- use ({ 'tpope/vim-fugitive' })
	use ({ 'airblade/vim-gitgutter' })
	use ({ 'mbbill/undotree' })

	use ({
		'nvim-neo-tree/neo-tree.nvim', branch = 'v3.x',
		requires = { 
			'nvim-lua/plenary.nvim',
			'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
			'MunifTanjim/nui.nvim'
		}
	})

end)
