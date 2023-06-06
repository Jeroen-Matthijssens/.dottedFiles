-- ---------------------------------------------------------------------------------------
--
-- Remap navigation keys
--
-- Keyboard layout used is dvorak, so sticking to the regular keybindings would put the
-- movement keys in horrible places. So place them back where they would have been for a
-- normal qwerty layout (switching j and k, cuz it's more logical for me).
--
-- Also remap moving to the end and beginning of lines, or searching for the next or
-- previous occurrence of a character.
--
-- The default vim mappings are placed on keys where the character has an association (t
-- -> 'till next occurrence', b -> 'back one word'). My brain works more based of the
-- location of the keys relative to each other. On a dvorak layout 'l' is the last key on
-- its row -> last char of the line, r comes before it -> first char of the line, ... .
--

vim.keymap.set ({ 'n', 'v', 'o' }, 'd', 'h')
vim.keymap.set ({ 'n', 'v', 'o' }, 'h', 'k')
vim.keymap.set ({ 'n', 'v', 'o' }, 't', 'j')
vim.keymap.set ({ 'n', 'v', 'o' }, 'n', 'l')

vim.keymap.set ({ 'n', 'v', 'o' }, 'r', '^')
vim.keymap.set ({ 'n', 'v', 'o' }, 'l', '$')
vim.keymap.set ({ 'n', 'v', 'o' }, 'f', '0')

vim.keymap.set ({ 'n', 'v', 'o' }, '<S-r>', 't')
vim.keymap.set ({ 'n', 'v', 'o' }, '<S-l>', 'f')

vim.keymap.set ({ 'n', 'v', 'o' }, '<C-r>', '<S-t>')
vim.keymap.set ({ 'n', 'v', 'o' }, '<C-l>', '<S-f>')

-- Larger movements sort of follow the same style
vim.keymap.set ({ 'n', 'o' }, '<S-h>', '<S-h>')
vim.keymap.set ({ 'n', 'o' }, '<S-t>', '<S-l>')
vim.keymap.set ('n', 'zh', 'zt')
vim.keymap.set ('n', 'zt', 'zb')
vim.keymap.set ('n', '<C-h>', '<S-h>zb')
vim.keymap.set ('n', '<C-t>', '<S-l>zt')

-- 'd' is no longer available for delete, so use 'e' for erase instead. Now 'e' is no
-- longer available for end of word, so use 'm' instead. 'm' is located between 'b' and
-- 'w'. Now 'm' is no longer available, but I don't use marks much.

vim.keymap.set ({ 'n', 'v', 'o' }, 'e', 'd')
vim.keymap.set ({ 'n', 'v', 'o' }, 'm', 'e')

-- 'n' is no longer available to go to the next match so use 'k' instead. 'k' used to be a
-- movement mapping which already has a new binding.

vim.keymap.set ({ 'n', 'v', 'o' }, 'k', 'n')
vim.keymap.set ({ 'n', 'v', 'o' }, '<S-k>', '<S-n>')


-- ---------------------------------------------------------------------------------------
--
-- Navigate between split screens.
--
-- The directions should follow what is used for normal navigation. One additional one is
-- added to go to the left most window (which often is a file tree viewer. The same
-- mappings are used to move the windows around, but now holding shift on the movement.
--

vim.keymap.set ('n', 'jd', '<C-w>h')
vim.keymap.set ('n', 'jh', '<C-w>k')
vim.keymap.set ('n', 'jt', '<C-w>j')
vim.keymap.set ('n', 'jn', '<C-w>l')
vim.keymap.set ('n', 'jr', '<C-w><C-t>')

vim.keymap.set ('n', 'js', '<C-w>=')

-- Move split screens around
vim.keymap.set ('n', '<S-j>d', '<C-w><S-h>')
vim.keymap.set ('n', '<S-j>h', '<C-w><S-k>')
vim.keymap.set ('n', '<S-j>t', '<C-w><S-j>')
vim.keymap.set ('n', '<S-j>n', '<C-w><S-l>')
vim.keymap.set ('n', 'j<S-d>', '<C-w><S-t>')


-- ---------------------------------------------------------------------------------------
--
-- Exiting insert mode
--
-- There is a trick of using jj to exit insert mode, but 'j' is located in an akward place
-- on dvorak. But h is pretty much in the same place and also does not really come up in
-- normal text.

vim.keymap.set ('i', 'hh', '<esc>')


-- ---------------------------------------------------------------------------------------
--
-- General live improvements
--

vim.keymap.set ('n', '<S-u>', '<C-r>')              -- make 'line undo' a 'redo'
vim.keymap.set ('n', '<S-s>', '<S-j>')              -- Join lines with 'S-s'
vim.keymap.set ('n', 'c/', vim.cmd.nohlsearch)      -- clear search highlighting

vim.keymap.set ('n', '+', '<C-a>')                  -- Increase number by 1
vim.keymap.set ('n', '-', '<C-x>')                  -- decrease number by 1

vim.keymap.set ('n', '>', '>>')                     -- easier indentation icrement
vim.keymap.set ('n', '<', '<<')                     -- easier indentation decrement
vim.keymap.set ('v', '>', '>gv')                    -- easier indentation icrement
vim.keymap.set ('v', '<', '<gv')                    -- easier indentation decrement

vim.keymap.set ({ 'n', 'v', 'o' }, ',', ':')             -- swap cmd mdo eback to unshift key
vim.keymap.set ({ 'n', 'v', 'o' }, ':', ',')             -- put the original on the shifted key


-- ---------------------------------------------------------------------------------------
--
-- Remove obtrusive key bindings
--
-- Remove the x mappings they suck. 'en' or 'cn' feel more natualer and don't take mure
-- time. (I have never hit the x key intentionally ...). Similarly joining lines the
-- original way is just annoying now
--

vim.keymap.set ('n', 'x', '<nop>')
vim.keymap.set ('n', '<S-x>', '<nop>')
vim.keymap.set ('n', '<S-j>', '<nop>')


-- ---------------------------------------------------------------------------------------
--
-- Custom functions
--
-- Place non standard functionality after the leader key.
--

vim.g.mapleader = ';'

local telescope = require('telescope.builtin')
vim.keymap.set ('n', '<leader>fs', telescope.find_files, {})
vim.keymap.set ('n', '<leader>gs', telescope.git_files, {})
vim.keymap.set ('n', '<leader>ps', function()
	telescope.grep_string ({ search = vim.fn.input ('grep > ') })
end)

vim.keymap.set ({ 'n', 'v', 'o' }, '<leader>u', vim.cmd.UndotreeToggle)
-- vim.keymap.set ('n', '<leader>gs', vim.cmd.Git)
vim.keymap.set ({ 'n', 'v', 'o' }, '<leader>ff', '<cmd>Telescope file_browser<cr>')
