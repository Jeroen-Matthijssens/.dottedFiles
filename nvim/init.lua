-- vim.cmd([[
-- 	set runtimepath^=~/.vim runtimepath+=~/.vim/after
-- 	let &packpath = &runtimepath
-- 	source ~/.vimrc
-- 
-- 	let g:loaded_perl_provider = 0
-- 	let g:loaded_ruby_provider = 0
-- 	let g:loaded_node_provider = 0
-- 	let g:loaded_python_provider = 0
-- 
-- 	let g:loaded_python3_provider = 0
-- ]])
--

require ('me.packer')
require ('me.keymapping')
require ('me.treesitter')

vim.opt.directory = vim.fn.stdpath('state') .. '/nvim/swaps//'
vim.opt.backupdir = vim.fn.stdpath('state') .. '/nvim/backup//'
vim.opt.undodir = vim.fn.stdpath('state') .. '/nvim/undo//'

vim.opt.undofile = true

vim.opt.guicursor = ''
vim.opt.nu = true
vim.opt.wrap = false
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.scrolloff = 10
vim.opt.textwidth = 90
vim.opt.colorcolumn = '+1'
vim.opt.clipboard = 'unnamedplus'

vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

vim.cmd.colorscheme ('simple')

vim.opt.list = true
vim.opt.listchars:append ({
	eol = '¶',
	tab = '»·',
	extends = '→',
	precedes = '←',
	trail = 'ł'
})

require ('telescope').setup ({
	extensions = {
		file_browser = {
			hijack_netrw = true,
			mappings = {
				['n'] = {
					['t'] = false
				}
			}
		}
	}
});

require ('telescope').load_extension ('file_browser')
