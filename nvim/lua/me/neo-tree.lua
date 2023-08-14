return require ('neo-tree').setup {
	use_default_mappings = false,
	window = {
		mappings = {
			-- disable `nowait` if you have existing combos starting with this char that you want to use 
			['<space>'] = { 'toggle_node', nowait = false },
			['<2-LeftMouse>'] = 'open',
			['<cr>'] = 'open',
			['<esc>'] = 'cancel', -- close preview or floating neo-tree window

			['O'] = 'open_split',
			['o'] = 'open',
			-- ['C'] = 'close_all_subnodes',

			-- this command supports BASH style brace expansion ('x{a,b,c}' -> xa,xb,xc). see `:h neo-tree-file-actions` for details
			-- some commands may take optional config options, see `:h neo-tree-mappings` for details
			-- show_path can be one off:'none', 'relative', 'absolute' 
			['a'] = { 'add', config = { show_path = 'relative' } },

			['ee'] = 'delete',
			['m'] = 'move', -- takes text input for destination, also accepts the optional config.show_path option like 'add'.
			['R'] = 'refresh',
			['?'] = 'show_help',
			['<'] = 'prev_source',
			['>'] = 'next_source',
		}
	}
}
